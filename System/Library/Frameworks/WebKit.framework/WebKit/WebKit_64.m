uint64_t WebKit::eventListenerTypesAtPoint(WebKit *this, UIView *a2, const WebCore::IntPoint *a3)
{
  v19 = &v21;
  v20 = 16;
  WebCore::IntPoint::operator CGPoint();
  WebKit::collectDescendantViewsAtPoint(&v19, this, 0, v4, v5);
  if (!HIDWORD(v20))
  {
    goto LABEL_14;
  }

  v7 = HIDWORD(v20);
  v8 = v19 - 1;
  while (1)
  {
    v9 = v8[v7];
    if (v9)
    {
      v10 = v9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (v9)
    {
    }

    if (!(--v7 * 8))
    {
      goto LABEL_14;
    }
  }

  if (v9)
  {
    WebCore::IntPoint::operator CGPoint();
    [v9 convertPoint:this fromView:?];
    v18.x = v11;
    v18.y = v12;
    v13 = [v9 layer];
    v15 = WebKit::RemoteLayerTreeNode::forCALayer(v13, v14);
    if (v15)
    {
      WebCore::IntPoint::IntPoint(v17, &v18);
      v15 = WebCore::EventRegion::eventListenerRegionTypesForPoint((v15 + 64), v17);
    }
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v6);
  return v15;
}

void sub_19D8D8EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, v7);
  _Unwind_Resume(a1);
}

uint64_t WebKit::findActingScrollParent(WebKit *this, UIScrollView *a2, const WebKit::RemoteLayerTreeHost *a3)
{
  v26 = 0;
  for (i = -[WebKit superview](this, "superview", a3); i; i = [i superview])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WebKit::RemoteLayerTreeNode::layerID([i layer], &v27);
      if ((v28 & 1) == 0)
      {
        __break(1u);
LABEL_32:
        __break(0xC471u);
        JUMPOUT(0x19D8D90D0);
      }

      v6 = v26;
      if (!v26)
      {
        break;
      }

      if (v27 == 0 || *(&v27 + 1) == -1)
      {
        goto LABEL_32;
      }

      v7 = *(v26 - 8);
      v8 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v27, *(&v27 + 1)) & v7;
      v9 = (v6 + 16 * v8);
      v10 = *v9;
      v11 = v9[1];
      if (*v9 != v27 || v11 != *(&v27 + 1))
      {
        v13 = 1;
        while (v10 | v11)
        {
          v8 = (v8 + v13) & v7;
          v14 = (v6 + 16 * v8);
          v10 = *v14;
          v11 = v14[1];
          ++v13;
          if (v10 == v27 && v11 == *(&v27 + 1))
          {
            goto LABEL_19;
          }
        }

        break;
      }
    }

LABEL_19:
    v16 = [i layer];
    v18 = WebKit::RemoteLayerTreeNode::forCALayer(v16, v17);
    v19 = v18;
    if (v18)
    {
      if (*(v18 + 184))
      {
        v27 = *(v18 + 184);
        v28 = 1;
        v20 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLayerTreeNode,WTF::RawPtrTraits<WebKit::RemoteLayerTreeNode>,WTF::DefaultRefDerefTraits<WebKit::RemoteLayerTreeNode>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&a2->super._constraintsExceptingSubviewAutoresizingConstraints, &v27);
        if (v20)
        {
          v21 = WTF::dynamic_objc_cast<UIScrollView>(*(v20 + 56));
          if (v21)
          {
            goto LABEL_28;
          }
        }
      }

      v22 = *(v19 + 212);
      if (v22)
      {
        v23 = *(v19 + 200);
        v24 = 16 * v22;
        do
        {
          WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v26, v23, &v27);
          v23 += 2;
          v24 -= 16;
        }

        while (v24);
      }
    }
  }

  v21 = 0;
LABEL_28:
  if (v26)
  {
    WTF::fastFree((v26 - 16), v4);
  }

  return v21;
}

void sub_19D8D90F4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    WTF::fastFree((a10 - 16), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WTF::dynamic_objc_cast<UIScrollView>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19D8D9364(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  _Unwind_Resume(a1);
}

uint64_t WebKit::isScrolledBy(WKChildScrollView *this, WKChildScrollView *a2, UIView *a3)
{
  WebKit::RemoteLayerTreeNode::layerID([(WKChildScrollView *)this layer], &v16);
  if (!a2)
  {
    v14 = 0;
    return v14 & v5;
  }

  while (1)
  {
    if (a2 == this)
    {
LABEL_18:
      v14 = 1;
      goto LABEL_19;
    }

    v6 = [(WKChildScrollView *)a2 layer];
    v8 = WebKit::RemoteLayerTreeNode::forCALayer(v6, v7);
    if (v8)
    {
      if (v17 == 1)
      {
        v9 = *(v8 + 184);
        if (v9)
        {
          if (v9 == v16.i64[0] && *(v8 + 192) == v16.i64[1])
          {
            goto LABEL_18;
          }
        }

        v11 = *(v8 + 212);
        if (v11)
        {
          break;
        }
      }
    }

LABEL_14:
    a2 = [(WKChildScrollView *)a2 superview];
    if (!a2)
    {
      v14 = 0;
LABEL_19:
      v5 = 1;
      return v14 & v5;
    }
  }

  v12 = *(v8 + 200);
  while (1)
  {
    v13 = vmovn_s64(vceqq_s64(*v12, v16));
    if (v13.i32[0] & v13.i32[1])
    {
      break;
    }

    ++v12;
    if (!--v11)
    {
      goto LABEL_14;
    }
  }

  v5 = 0;
  v14 = 1;
  return v14 & v5;
}

uint64_t WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::RetainPtr<UIView>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::RetainPtr<UIView>>(NSArray *)::{lambda(unsigned long)#1}>(uint64_t a1, unint64_t a2, id **a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (!a2)
  {
    return a1;
  }

  if (a2 >> 29)
  {
    goto LABEL_20;
  }

  v6 = WTF::fastMalloc((8 * a2));
  v7 = 0;
  *(a1 + 8) = a2;
  *a1 = v6;
  do
  {
    v8 = [**a3 objectAtIndexedSubscript:v7];
    v10 = v8;
    if (v8)
    {
      v11 = v8;
    }

    v12 = *(a1 + 12);
    v13 = *a1;
    *(*a1 + 8 * v12) = v10;
    v14 = (v12 + 1);
    *(a1 + 12) = v14;
    ++v7;
  }

  while (a2 != v7);
  if (*(a1 + 8) <= v14)
  {
    return a1;
  }

  if (v12 == -1)
  {
LABEL_16:
    if (*a1 == v13)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v13, v9);
    return a1;
  }

  if (v14 >> 29)
  {
LABEL_20:
    __break(0xC471u);
    JUMPOUT(0x19D8D99A4);
  }

  v15 = WTF::fastMalloc((8 * v14));
  *(a1 + 8) = v14;
  *a1 = v15;
  if (v15 == v13)
  {
    goto LABEL_16;
  }

  v16 = 0;
  do
  {
    v17 = *(v13 + v16);
    *(v13 + v16) = 0;
    *(v15 + v16) = v17;
    v18 = *(v13 + v16);
    *(v13 + v16) = 0;
    if (v18)
    {
    }

    v16 += 8;
  }

  while (8 * v14 != v16);
  if (v13)
  {
    goto LABEL_16;
  }

  return a1;
}

void sub_19D8D99B0(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

void **WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RetainPtr<UIView>&>(uint64_t a1, unint64_t a2)
{
  result = WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *(a1 + 12);
  v5 = *result;
  *(*a1 + 8 * v4) = *result;
  if (v5)
  {
    result = v5;
    LODWORD(v4) = *(a1 + 12);
  }

  *(a1 + 12) = v4 + 1;
  return result;
}

unint64_t WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 8 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) >= a2)
  {
    return;
  }

  v2 = a2;
  v4 = *a1;
  v5 = *(a1 + 12);
  if (a2 >= 0x11)
  {
    if (a2 >> 29)
    {
      __break(0xC471u);
      return;
    }

    v6 = WTF::fastMalloc((8 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v6 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = 16;
  if (v5)
  {
LABEL_7:
    v7 = 8 * v5;
    v8 = v4;
    do
    {
      v9 = *v8;
      *v8 = 0;
      *v6 = v9;
      v10 = *v8;
      *v8 = 0;
      if (v10)
      {
      }

      ++v6;
      v8 = (v8 + 8);
      v7 -= 8;
    }

    while (v7);
  }

LABEL_11:
  if ((a1 + 16) != v4 && v4)
  {
    if (*a1 == v4)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    WTF::fastFree(v4, a2);
  }
}

Class ___ZN6WebKitL30scrollViewScrollIndicatorClassEv_block_invoke()
{
  result = NSClassFromString(&cfstr_Uiscrollviewsc.isa);
  qword_1EB01CFD8 = result;
  return result;
}

uint64_t WTF::Vector<WTF::RetainPtr<UIView>,16ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = *a1;
  if (a1 + 16 != *a1 && v7 != 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(unint64_t a1, unint64_t a2)
{
  v9 = 0;
  v10 = 0;
  v2 = (a1 >> 5) & 0x7FFF800 ^ ((a1 - 1640531527) << 16) ^ (a1 - 1640531527);
  v3 = (a1 >> 37) & 0x7FFF800 ^ ((v2 + WORD2(a1) + (v2 >> 11)) << 16) ^ (v2 + WORD2(a1) + (v2 >> 11));
  v4 = (a2 >> 5) & 0x7FFF800 ^ ((v3 + a2 + (v3 >> 11)) << 16) ^ (v3 + a2 + (v3 >> 11));
  v5 = v4 + WORD2(a2) + (v4 >> 11);
  v6 = (a2 >> 37) & 0x7FFF800 ^ (v5 << 16);
  v8 = (v6 ^ v5) + ((v6 ^ v5) >> 11);
  return WTF::SuperFastHash::hash(&v8);
}

uint64_t WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == 0 || a2[1] == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8D9EDCLL);
  }

  v6 = *a1;
  if (*a1 || (WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, 0), (v6 = *a1) != 0))
  {
    v7 = *(v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  result = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*a2, a2[1]);
  v9 = result & v7;
  v10 = (v6 + 16 * (result & v7));
  v12 = *v10;
  v11 = v10[1];
  v13 = *a2;
  if (*v10 != 0)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (__PAIR128__(v11, v12) == v13)
      {
        v20 = *a1;
        if (*a1)
        {
          v21 = *(v20 - 4);
        }

        else
        {
          v21 = 0;
        }

        v23 = 0;
        v22 = v20 + 16 * v21;
        goto LABEL_28;
      }

      if (v11 == -1)
      {
        v14 = v10;
      }

      v9 = (v9 + v15) & v7;
      v10 = (v6 + 16 * v9);
      v12 = *v10;
      v11 = v10[1];
      ++v15;
    }

    while (*v10 != 0);
    if (v14)
    {
      *v14 = 0;
      v14[1] = 0;
      --*(*a1 - 16);
      v13 = *a2;
      v10 = v14;
    }
  }

  *v10 = v13;
  v16 = *a1;
  if (*a1)
  {
    v17 = *(v16 - 12) + 1;
  }

  else
  {
    v17 = 1;
  }

  *(v16 - 12) = v17;
  v18 = (*(v16 - 16) + v17);
  v19 = *(v16 - 4);
  if (v19 > 0x400)
  {
    if (v19 <= 2 * v18)
    {
LABEL_19:
      result = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(a1, v10);
      v10 = result;
      v16 = *a1;
      if (*a1)
      {
        v19 = *(v16 - 4);
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else if (3 * v19 <= 4 * v18)
  {
    goto LABEL_19;
  }

  v22 = v16 + 16 * v19;
  v23 = 1;
LABEL_28:
  *a3 = v10;
  *(a3 + 8) = v22;
  *(a3 + 16) = v23;
  return result;
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, unint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v7 = v7;
    v12 = v6;
    do
    {
      if (v12[1] != -1 && *v12 != 0)
      {
        v13 = WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
        *v13 = *v12;
        if (v12 == a3)
        {
          v11 = v13;
        }
      }

      v12 += 2;
      --v7;
    }

    while (v7);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

_OWORD *WTF::HashTable<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = WTF::IdentityHashTranslator<WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>::hash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(*a2, a2[1]);
  v5 = 0;
  do
  {
    v6 = (v2 + 16 * (v4 & v3));
    v4 = ++v5 + (v4 & v3);
  }

  while (*v6 != 0);
  return v6;
}

WTF::StringImpl *WebKit::RemoteMediaPlayerMIMETypeCache::addSupportedTypes(WTF::StringImpl *result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = *(a2 + 12);
  if (v3)
  {
    v4 = result;
    v5 = *a2;
    v6 = 8 * v3;
    do
    {
      result = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v4 + 6, v5++, a3, v7);
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

BOOL WebKit::RemoteMediaPlayerMIMETypeCache::isEmpty(WebKit::RemoteMediaPlayerMIMETypeCache *this)
{
  if (*(this + 56) != 1)
  {
    return 0;
  }

  v1 = *(this + 6);
  return !v1 || *(v1 - 12) == 0;
}

uint64_t WebKit::RemoteMediaPlayerMIMETypeCache::supportedTypes(WebKit::RemoteMediaPlayerMIMETypeCache *this, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(this + 56))
  {
    return this + 48;
  }

  v3 = *(this + 2);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v3, *(this + 1), &v35);
    v4 = v35;
  }

  else
  {
    v4 = 0;
  }

  v5 = WebKit::RemoteMediaPlayerManager::gpuProcessConnection(v4, a2)[4];
  v6 = *(this + 24);
  IPC::Connection::createSyncMessageEncoder(0x1011, 0, v42);
  LOBYTE(v35) = v6;
  IPC::Encoder::operator<<<unsigned char>(v42[0], &v35);
  v7 = IPC::Connection::sendSyncMessage(v5, v42[1], v42, 0, &v40, INFINITY);
  if (!v41)
  {
    v11 = v40;
    v40 = 0;
    if (*(v11 + 25) == 3194)
    {
      v12 = 11;
    }

    else
    {
      LOBYTE(v38) = 0;
      v39 = 0;
      IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v11, &v38);
      if (v39 == 1)
      {
        *&v14 = 0;
        v15 = v38;
        v38 = v14;
        buf = 0uLL;
        v35 = v11;
        v36 = v15;
        v44 = 0;
        v37 = 0;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&buf + 8, v13);
        v16 = buf;
        *&buf = 0;
        if (v16)
        {
          IPC::Decoder::~Decoder(v16);
          bmalloc::api::tzoneFree(v33, v34);
        }

        if (v39)
        {
          WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v38, v8);
        }

        v10 = 0;
        goto LABEL_18;
      }

      v12 = 14;
    }

    LOBYTE(v35) = v12;
    v37 = 1;
    IPC::Decoder::~Decoder(v11);
    bmalloc::api::tzoneFree(v17, v18);
    v10 = 1;
LABEL_18:
    if (!v41)
    {
      v19 = v40;
      v40 = 0;
      if (v19)
      {
        IPC::Decoder::~Decoder(v19);
        bmalloc::api::tzoneFree(v29, v30);
      }
    }

    goto LABEL_21;
  }

  if (v41 != 1)
  {
    goto LABEL_38;
  }

  LOBYTE(v35) = v40;
  v10 = 1;
  v37 = 1;
LABEL_21:
  v20 = v42[0];
  v42[0] = 0;
  if (!v20)
  {
    if (!v4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  IPC::Encoder::~Encoder(v20, v8);
  bmalloc::api::tzoneFree(v27, v28);
  if (v4)
  {
LABEL_23:
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v4 + 1, v8);
    v10 = v37;
  }

LABEL_24:
  if (!v10)
  {
    if (HIDWORD(v36))
    {
      v23 = v36;
      v24 = 8 * HIDWORD(v36);
      do
      {
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(this + 6, v23++, v9, &buf);
        v24 -= 8;
      }

      while (v24);
    }

    *(this + 56) = 1;
    goto LABEL_32;
  }

  v21 = qword_1ED640D38;
  v7 = os_log_type_enabled(qword_1ED640D38, OS_LOG_TYPE_ERROR);
  if (!v7)
  {
    return this + 48;
  }

  if (v10 != 1)
  {
LABEL_38:
    mpark::throw_bad_variant_access(v7);
  }

  v22 = IPC::errorAsString();
  LODWORD(buf) = 136446210;
  *(&buf + 4) = v22;
  _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "RemoteMediaPlayerMIMETypeCache::supportedTypes: Sync IPC to the GPUProcess failed with error %{public}s", &buf, 0xCu);
LABEL_32:
  if (!v37)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, v8);
    v25 = v35;
    v35 = 0;
    if (v25)
    {
      IPC::Decoder::~Decoder(v25);
      bmalloc::api::tzoneFree(v31, v32);
    }
  }

  return this + 48;
}

uint64_t WebKit::RemoteMediaPlayerMIMETypeCache::supportsTypeAndCodecs(WebKit::RemoteMediaPlayerMIMETypeCache *this, const WebCore::MediaEngineSupportParameters *a2, const WTF::StringImpl *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 2;
  }

  v4 = 2;
  if (v3[1])
  {
    v5 = a2;
    atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed);
    v70 = v3;
    v7 = *(a2 + 56);
    v71 = *(a2 + 56);
    v8 = *(a2 + 57);
    v72 = *(a2 + 57);
    v9 = *(a2 + 58);
    v73 = *(a2 + 58);
    if (*(this + 40) != 1)
    {
      *(this + 4) = 0;
      *(this + 40) = 1;
      goto LABEL_24;
    }

    if (!*(this + 4))
    {
      goto LABEL_18;
    }

    v10 = WTF::equal(v3, 0, a3);
    if (!(v8 | v7 | v9) && v10)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8DA96CLL);
    }

    if (v3 == -1)
    {
      __break(0xC471u);
      goto LABEL_102;
    }

    v11 = *(this + 4);
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *(v11 - 8);
    v13 = WTF::TupleHash<WTF::String,BOOL,BOOL,BOOL>::hash<0ul>(&v70) & v12;
    v14 = v11 + 24 * v13;
    if (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,false>::isEmptyValue<std::tuple<WTF::String,BOOL,BOOL,BOOL>>(v14, v15, v16))
    {
      v18 = 1;
      while (*v14 == -1 || (WTF::TupleHash<WTF::String,BOOL,BOOL,BOOL>::equal<0ul>(v14, &v70, v17) & 1) == 0)
      {
        v13 = (v13 + v18) & v12;
        v14 = v11 + 24 * v13;
        ++v18;
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,false>::isEmptyValue<std::tuple<WTF::String,BOOL,BOOL,BOOL>>(v14, a2, v17))
        {
          goto LABEL_14;
        }
      }

      goto LABEL_19;
    }

LABEL_14:
    v19 = *(this + 4);
    if (v19)
    {
      v14 = v19 + 24 * *(v19 - 4);
    }

    else
    {
LABEL_18:
      v14 = 0;
    }

LABEL_19:
    if ((*(this + 40) & 1) == 0)
    {
      goto LABEL_102;
    }

    v20 = *(this + 4);
    if (v20)
    {
      v20 += 24 * *(v20 - 4);
    }

    if (v20 != v14)
    {
      v4 = *(v14 + 16);
LABEL_89:
      v60 = v70;
      if (v70 && atomic_fetch_add_explicit(v70, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, a2);
      }

      return v4;
    }

LABEL_24:
    v21 = *(this + 2);
    if (v21)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(v21, *(this + 1), v76);
      v22 = v76[0];
    }

    else
    {
      v22 = 0;
    }

    v23 = WebKit::RemoteMediaPlayerManager::gpuProcessConnection(v22, a2)[4];
    v24 = *(this + 24);
    IPC::Connection::createSyncMessageEncoder(0x1013, 0, v76);
    v25 = v76[0];
    LOBYTE(v74) = v24;
    IPC::Encoder::operator<<<unsigned char>(v76[0], &v74);
    IPC::ArgumentCoder<WebCore::MediaEngineSupportParameters,void>::encode(v25, v5);
    v26 = IPC::Connection::sendSyncMessage(v23, v76[1], v76, 0, &v74, INFINITY);
    if (v75)
    {
      if (v75 != 1)
      {
        mpark::throw_bad_variant_access(v26);
      }

      v28 = 0;
      v29 = v74;
      v30 = 1;
      goto LABEL_48;
    }

    v29 = v74;
    v74 = 0;
    if (*(v29 + 50) == 3194)
    {
      v31 = 11;
      goto LABEL_45;
    }

    v27 = *(v29 + 8);
    v32 = *(v29 + 16);
    a2 = *v29;
    if (v27 <= &v32[-*v29])
    {
      *v29 = 0;
      *(v29 + 8) = 0;
      v33 = v29;
      v34 = *(v29 + 24);
      if (v34)
      {
        if (v27)
        {
          (*(*v34 + 16))(v34);
          a2 = *v29;
          v27 = *(v29 + 8);
          goto LABEL_40;
        }
      }

      else
      {
        v27 = 0;
      }

      a2 = 0;
    }

    else
    {
      *(v29 + 16) = v32 + 1;
      if (v32)
      {
        v28 = *v32;
        if (v28 < 3)
        {
          v30 = 0;
LABEL_46:
          v39 = v74;
          v74 = 0;
          if (v39)
          {
            IPC::Decoder::~Decoder(v39);
            bmalloc::api::tzoneFree(v62, v63);
          }

LABEL_48:
          v40 = v76[0];
          v76[0] = 0;
          if (v40)
          {
            IPC::Encoder::~Encoder(v40, a2);
            bmalloc::api::tzoneFree(v56, v57);
            if (!v22)
            {
LABEL_51:
              v4 = 0;
              if (v30)
              {
                v41 = 0;
              }

              else
              {
                v41 = v28;
              }

              if (v30)
              {
                goto LABEL_89;
              }

              if (*(this + 40))
              {
                v42 = v70;
                if (!WTF::equal(v70, 0, v27) || v71 || v72 || v73)
                {
                  if (v42 == -1)
                  {
                    __break(0xC471u);
                    JUMPOUT(0x19D8DA9CCLL);
                  }

                  v69 = v29;
                  v43 = *(this + 4);
                  if (v43 || (WTF::HashTable<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WTF::KeyValuePair<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType>>,WTF::DefaultHash<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashMap<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType,WTF::DefaultHash<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashTraits<WebCore::MediaPlayerSupportsType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::FastMalloc>::expand(this + 4), (v43 = *(this + 4)) != 0))
                  {
                    v44 = *(v43 - 8);
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v45 = WTF::TupleHash<WTF::String,BOOL,BOOL,BOOL>::hash<0ul>(&v70) & v44;
                  v46 = v43 + 24 * v45;
                  if (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,false>::isEmptyValue<std::tuple<WTF::String,BOOL,BOOL,BOOL>>(v46, v47, v48))
                  {
                    v50 = v41;
                    v51 = 0;
                    v52 = 1;
                    do
                    {
                      if (*v46 == -1)
                      {
                        v51 = v46;
                      }

                      else if (WTF::TupleHash<WTF::String,BOOL,BOOL,BOOL>::equal<0ul>(v46, &v70, v49))
                      {
                        goto LABEL_86;
                      }

                      v45 = (v45 + v52) & v44;
                      v46 = v43 + 24 * v45;
                      ++v52;
                    }

                    while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,false>::isEmptyValue<std::tuple<WTF::String,BOOL,BOOL,BOOL>>(v46, a2, v49));
                    v41 = v50;
                    if (v51)
                    {
                      *(v51 + 7) = 0;
                      *v51 = 0;
                      *(v51 + 16) = 0;
                      --*(*(this + 4) - 16);
                      v42 = v70;
                      v46 = v51;
                    }
                  }

                  if (v42)
                  {
                    atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
                  }

                  v53 = *v46;
                  *v46 = v42;
                  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
                  {
                    WTF::StringImpl::destroy(v53, a2);
                  }

                  *(v46 + 8) = v71;
                  *(v46 + 9) = v72;
                  *(v46 + 10) = v73;
                  *(v46 + 16) = v41;
                  v54 = *(this + 4);
                  if (v54)
                  {
                    v55 = *(v54 - 12) + 1;
                  }

                  else
                  {
                    v55 = 1;
                  }

                  v50 = v41;
                  *(v54 - 12) = v55;
                  v58 = (*(v54 - 16) + v55);
                  v59 = *(v54 - 4);
                  if (v59 > 0x400)
                  {
                    if (v59 > 2 * v58)
                    {
                      goto LABEL_86;
                    }
                  }

                  else if (3 * v59 > 4 * v58)
                  {
LABEL_86:
                    if (v69)
                    {
                      IPC::Decoder::~Decoder(v69);
                      bmalloc::api::tzoneFree(v64, v65);
                    }

                    v4 = v50;
                    goto LABEL_89;
                  }

                  WTF::HashTable<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WTF::KeyValuePair<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType>>,WTF::DefaultHash<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashMap<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType,WTF::DefaultHash<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashTraits<WebCore::MediaPlayerSupportsType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::FastMalloc>::expand(this + 4);
                  goto LABEL_86;
                }

LABEL_103:
                __break(0xC471u);
                JUMPOUT(0x19D8DA9ACLL);
              }

LABEL_102:
              __break(1u);
              goto LABEL_103;
            }
          }

          else if (!v22)
          {
            goto LABEL_51;
          }

          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(v22 + 1, a2);
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      v33 = v29;
    }

LABEL_40:
    *v33 = 0;
    *(v33 + 1) = 0;
    v29 = v33;
    v35 = *(v33 + 3);
    if (v35)
    {
      if (v27)
      {
        (*(*v35 + 16))(v35, a2);
        a2 = *v33;
        v27 = *(v33 + 1);
        goto LABEL_43;
      }
    }

    else
    {
      v27 = 0;
    }

    a2 = 0;
LABEL_43:
    *v29 = 0;
    *(v29 + 8) = 0;
    v36 = *(v29 + 24);
    if (v36 && v27)
    {
      (*(*v36 + 16))(v36, a2);
      v66 = *v29;
      v67 = *(v29 + 8);
      v68 = *(v29 + 24);
      v31 = 14;
      *v29 = 0;
      *(v29 + 8) = 0;
      if (!v68 || !v67)
      {
LABEL_45:
        IPC::Decoder::~Decoder(v29);
        bmalloc::api::tzoneFree(v37, v38);
        v28 = 0;
        v30 = 1;
        v29 = v31;
        if (v75)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      (*(*v68 + 16))(v68, v66);
    }

    v31 = 14;
    goto LABEL_45;
  }

  return v4;
}

unint64_t WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::controlBlock(atomic_ullong *a1)
{
  result = *a1;
  if (result)
  {
    result = WTF::fastMalloc(0x20);
    *result = 0;
    *(result + 8) = xmmword_19E7014F0;
    *(result + 24) = a1 - 1;
    while (1)
    {
      v4 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      *(result + 8) = v4 >> 1;
      v5 = v4;
      atomic_compare_exchange_strong_explicit(a1, &v5, result, memory_order_release, memory_order_relaxed);
      if (v5 == v4)
      {
        return result;
      }
    }

    WTF::fastFree(result, v3);
    return *a1;
  }

  return result;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 3))();
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v2 = this;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  v4 = *(v2 + 1) - 1;
  *(v2 + 1) = v4;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 3);
    ++*(v2 + 2);
    *(v2 + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v7 = v5;
    v8 = v4;
    this = WTF::Lock::unlockSlow(v2);
    v5 = v7;
    v4 = v8;
  }

  if (!v4)
  {
    v9[0] = v2;
    v9[1] = v5;
    return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>(void)const::{lambda(void)#1}::operator()(v9, a2);
  }

  return this;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::RemoteMediaPlayerManager,(WTF::DestructionThread)0>(void)const::{lambda(void)#1}::operator()(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = a1[1];
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  v4 = 0;
  v5 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](v3);
  }

  v6 = *(v3 + 16) - 1;
  *(v3 + 16) = v6;
  atomic_compare_exchange_strong_explicit(v3, &v5, 0, memory_order_release, memory_order_relaxed);
  if (v5 == 1)
  {
    if (v6)
    {
      return result;
    }
  }

  else
  {
    v7 = v6;
    result = WTF::Lock::unlockSlow(v3);
    if (v7)
    {
      return result;
    }
  }

  return WTF::fastFree(v3, a2);
}

IPC::Decoder *IPC::Decoder::operator>><std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(IPC::Decoder *a1, uint64_t a2)
{
  IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(a1, v6);
  std::__optional_storage_base<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>>(a2, v6);
  if (v6[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v4);
  }

  return a1;
}

uint64_t IPC::Encoder::operator<<<unsigned char>(IPC::Encoder *a1, char *a2)
{
  v3 = *a2;
  v4 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v5)
  {
    *v4 = v3;
    return a1;
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

uint64_t IPC::Decoder::decode<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v7);
  if (v9)
  {
    *a2 = v7;
    v5 = v8;
    v7 = 0;
    v8 = 0;
    *(a2 + 8) = v5;
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v4);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v6;
  return result;
}

uint64_t std::__optional_storage_base<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,false>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {

      return std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100](result, a2);
    }
  }

  else if (*(result + 16))
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);
    *(v2 + 16) = 0;
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    result = WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(result, a2);
    *(v2 + 16) = 1;
  }

  return result;
}

uint64_t std::tuple<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::operator=[abi:sn200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::String>::destruct(*a1, (*a1 + 8 * v4));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

BOOL WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,false>::isEmptyValue<std::tuple<WTF::String,BOOL,BOOL,BOOL>>(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  if (WTF::equal(*a1, 0, a3))
  {
    v4 = *(a1 + 8) == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4 && *(a1 + 9) == 0 && *(a1 + 10) == 0;
}

unint64_t WTF::TupleHash<WTF::String,BOOL,BOOL,BOOL>::hash<0ul>(uint64_t a1)
{
  v2 = *a1;
  v3 = *(v2 + 4);
  if (v3 < 0x100)
  {
    v4 = WTF::StringImpl::hashSlowCase(v2);
  }

  else
  {
    v4 = v3 >> 8;
  }

  v5 = ~(*(a1 + 8) << 15) + *(a1 + 8);
  v6 = (9 * (v5 ^ (v5 >> 10))) ^ ((9 * (v5 ^ (v5 >> 10))) >> 6);
  v7 = ~(*(a1 + 9) << 15) + *(a1 + 9);
  v8 = (9 * (v7 ^ (v7 >> 10))) ^ ((9 * (v7 ^ (v7 >> 10))) >> 6);
  v9 = ~(*(a1 + 10) << 15) + *(a1 + 10);
  v10 = (9 * (v9 ^ (v9 >> 10))) ^ ((9 * (v9 ^ (v9 >> 10))) >> 6);
  return (0xD7862706ELL * (277951225 * v4 + 95187966 * ((0xD7862706ELL * (277951225 * ((v6 + ~(v6 << 11)) ^ ((v6 + ~(v6 << 11)) >> 16)) + 95187966 * ((0xD7862706ELL * (277951225 * ((v8 + ~(v8 << 11)) ^ ((v8 + ~(v8 << 11)) >> 16)) + 95187966 * ((v10 + ~(v10 << 11)) ^ ((v10 + ~(v10 << 11)) >> 16)))) >> 4))) >> 4))) >> 4;
}

uint64_t WTF::TupleHash<WTF::String,BOOL,BOOL,BOOL>::equal<0ul>(uint64_t a1, uint64_t a2, const WTF::StringImpl *a3)
{
  result = WTF::equal(*a1, *a2, a3);
  if (result)
  {
    return *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10);
  }

  return result;
}

_DWORD *WTF::HashTable<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WTF::KeyValuePair<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType>>,WTF::DefaultHash<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashMap<std::tuple<WTF::String,BOOL,BOOL,BOOL>,WebCore::MediaPlayerSupportsType,WTF::DefaultHash<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::HashTraits<WebCore::MediaPlayerSupportsType>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 - 4);
    v3 = *(v1 - 12);
    if (v2)
    {
      v4 = v2 << (6 * v3 >= 2 * v2);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = 8;
LABEL_6:
  result = WTF::fastMalloc((24 * v4 + 16));
  if (v4)
  {
    v8 = v4;
    v9 = result + 8;
    do
    {
      *(v9 - 9) = 0;
      *(v9 - 2) = 0;
      *v9 = 0;
      v9 += 24;
      --v8;
    }

    while (v8);
  }

  *a1 = (result + 4);
  result[2] = v4 - 1;
  result[3] = v4;
  *result = 0;
  result[1] = v3;
  if (v2)
  {
    v10 = 0;
    v11 = v2;
    v23 = v1;
    while (1)
    {
      v12 = v1 + 24 * v10;
      if (*v12 != -1)
      {
        if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,false>::isEmptyValue<std::tuple<WTF::String,BOOL,BOOL,BOOL>>(v1 + 24 * v10, v6, v7))
        {
          v13 = *v12;
          *v12 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = *(v14 - 8);
          }

          else
          {
            v15 = 0;
          }

          v16 = WTF::TupleHash<WTF::String,BOOL,BOOL,BOOL>::hash<0ul>(v1 + 24 * v10);
          v17 = 0;
          do
          {
            v18 = v16 & v15;
            v19 = v14 + 24 * (v16 & v15);
            v20 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<std::tuple<WTF::String,BOOL,BOOL,BOOL>>,false>::isEmptyValue<std::tuple<WTF::String,BOOL,BOOL,BOOL>>(v19, v6, v7);
            v16 = ++v17 + v18;
          }

          while (!v20);
          v21 = *v19;
          *v19 = 0;
          v1 = v23;
          if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v21, v6);
          }

          v22 = *v12;
          *v12 = 0;
          *v19 = v22;
          *(v19 + 8) = *(v12 + 8);
          *(v19 + 9) = *(v12 + 9);
          *(v19 + 10) = *(v12 + 10);
          *(v19 + 16) = *(v12 + 16);
          v13 = *v12;
          *v12 = 0;
          if (!v13 || atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_27;
          }
        }

        WTF::StringImpl::destroy(v13, v6);
      }

LABEL_27:
      if (++v10 == v11)
      {
        goto LABEL_30;
      }
    }
  }

  if (v1)
  {
LABEL_30:

    return WTF::fastFree((v1 - 16), v6);
  }

  return result;
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>@<X0>(atomic_uchar *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = this;
  v6 = 0;
  atomic_compare_exchange_strong_explicit(this, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    this = MEMORY[0x19EB01E30](this);
  }

  if (*(v4 + 3))
  {
    ++*(v4 + 1);
  }

  else
  {
    a2 = 0;
  }

  *a3 = a2;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v4);
  }

  return this;
}

_DWORD *WTF::RefCounted<WebKit::RemoteLayerTreeNode>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    WebKit::RemoteLayerTreeNode::~RemoteLayerTreeNode((result - 2));

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::RunLoop *WebKit::ScopedRenderingResourcesRequest::scheduleFreeRenderingResources(WTF::RunLoop *this)
{
  if ((WebKit::didScheduleFreeRenderingResources & 1) == 0)
  {
    WTF::RunLoop::mainSingleton(this);
    v1 = WTF::fastMalloc(0x10);
    *v1 = &unk_1F10EB420;
    *(v1 + 1) = WebKit::ScopedRenderingResourcesRequest::freeRenderingResources;
    v2 = v1;
    WTF::RunLoop::dispatchAfter();
    if (v3)
    {
      WTF::ThreadSafeRefCounted<WTF::RunLoop::DispatchTimer,(WTF::DestructionThread)0>::deref((v3 + 40));
    }

    this = v2;
    if (v2)
    {
      this = (*(*v2 + 8))(v2);
    }

    WebKit::didScheduleFreeRenderingResources = 1;
  }

  return this;
}

void sub_19D8DB428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::ScopedRenderingResourcesRequest::freeRenderingResources(WebKit::ScopedRenderingResourcesRequest *this)
{
  WebKit::didScheduleFreeRenderingResources = 0;
  if (!atomic_load(WebKit::ScopedRenderingResourcesRequest::s_requests))
  {
    v2 = MTLCreateSystemDefaultDevice();
    if (objc_opt_respondsToSelector())
    {
      [v2 _purgeDevice];
    }

    if (v2)
    {
    }
  }
}

void sub_19D8DB4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v14 = objc_begin_catch(exception_object);
  ReportBlockedObjCException(v14);

  objc_end_catch();
}

uint64_t WebKit::ServiceWorkerDebuggableFrontendChannel::operator new(WebKit::ServiceWorkerDebuggableFrontendChannel *this, void *a2)
{
  if (this == 24 && WebKit::ServiceWorkerDebuggableFrontendChannel::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ServiceWorkerDebuggableFrontendChannel::s_heapRef, a2);
  }

  else
  {
    return WebKit::ServiceWorkerDebuggableFrontendChannel::operatorNewSlow(this);
  }
}

IPC::Encoder *WebKit::ServiceWorkerDebuggableFrontendChannel::sendMessageToFrontend(WebKit::ServiceWorkerDebuggableFrontendChannel *this, const WTF::String *a2)
{
  {
    v4 = WebKit::WebProcess::singleton(void)::process;
  }

  else
  {
    v4 = WebKit::WebProcess::operator new(0x370, a2);
    WebKit::WebProcess::singleton(void)::process = WebKit::WebProcess::WebProcess(v4);
  }

  v6 = *(v4 + 3);
  v5 = (v4 + 24);
  v7 = (*(v6 + 56))(v5);
  v9 = IPC::Encoder::operator new(0x238, v8);
  *v9 = 2919;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = v7;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v14 = v9;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(this + 2));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
  (*(*v5 + 32))(v5, &v14, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v10);
    return bmalloc::api::tzoneFree(v12, v13);
  }

  return result;
}

uint64_t WebKit::ServiceWorkerDebuggableProxy::operator new(WebKit::ServiceWorkerDebuggableProxy *this, void *a2)
{
  if (this == 64 && WebKit::ServiceWorkerDebuggableProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ServiceWorkerDebuggableProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::ServiceWorkerDebuggableProxy::operatorNewSlow(this);
  }
}

Inspector::RemoteInspectionTarget *WebKit::ServiceWorkerDebuggableProxy::ServiceWorkerDebuggableProxy(Inspector::RemoteInspectionTarget *a1, atomic_uint **a2, uint64_t a3, uint64_t a4)
{
  *Inspector::RemoteInspectionTarget::RemoteInspectionTarget(a1) = &unk_1F10EB478;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  *(a1 + 5) = v8;
  *(a1 + 6) = a3;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 8), a4);
  v9 = *(a4 + 8);
  atomic_fetch_add(v9, 1u);
  *(a1 + 7) = v9;
  Inspector::RemoteInspectionTarget::setPresentingApplicationPID();
  return a1;
}

void WebKit::ServiceWorkerDebuggableProxy::connect(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 48);
    *buf = 134217984;
    *&buf[4] = v9;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "ServiceWorkerDebuggableProxy::connect: serviceWorkerIdentifier=%llu", buf, 0xCu);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      atomic_fetch_add((v11 + 16), 1u);
      v18 = a3;
      v19[0] = a4;
      v12 = IPC::Encoder::operator new(0x238, v8);
      *v12 = 3061;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = 0;
      IPC::Encoder::encodeHeader(v12);
      v20 = v12;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, *(a1 + 48));
      IPC::Encoder::operator<<<BOOL &>(v12, &v18);
      IPC::Encoder::operator<<<BOOL &>(v12, v19);
      buf[0] = 0;
      v22 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v11, &v20, 0, buf, 1);
      if (v22 == 1)
      {
        v14 = *buf;
        *buf = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      v15 = v20;
      v20 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v13);
        bmalloc::api::tzoneFree(v16, v17);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16));
    }
  }
}

void WebKit::ServiceWorkerDebuggableProxy::disconnect(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "ServiceWorkerDebuggableProxy::disconnect: serviceWorkerIdentifier=%llu", buf, 0xCu);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      atomic_fetch_add((v6 + 16), 1u);
      v7 = IPC::Encoder::operator new(0x238, v3);
      *v7 = 3065;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(a1 + 48));
      buf[0] = 0;
      v15 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v6, &v13, 0, buf, 1);
      if (v15 == 1)
      {
        v9 = *buf;
        *buf = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v8);
        bmalloc::api::tzoneFree(v11, v12);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
    }
  }
}

void WebKit::ServiceWorkerDebuggableProxy::dispatchMessageFromRemote(uint64_t a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 48);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "ServiceWorkerDebuggableProxy::dispatchMessageFromRemote: serviceWorkerIdentifier=%llu", buf, 0xCu);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      atomic_fetch_add((v8 + 16), 1u);
      v9 = IPC::Encoder::operator new(0x238, v5);
      *v9 = 3066;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = 0;
      IPC::Encoder::encodeHeader(v9);
      v15 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, *(a1 + 48));
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v9, a2);
      buf[0] = 0;
      v17 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v8, &v15, 0, buf, 1);
      if (v17 == 1)
      {
        v11 = *buf;
        *buf = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      v12 = v15;
      v15 = 0;
      if (v12)
      {
        IPC::Encoder::~Encoder(v12, v10);
        bmalloc::api::tzoneFree(v13, v14);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16));
    }
  }
}

void WebKit::ServiceWorkerDebuggableProxy::pauseWaitingForAutomaticInspection(WebKit::ServiceWorkerDebuggableProxy *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 6);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "ServiceWorkerDebuggableProxy::pauseWaitingForAutomaticInspection: serviceWorkerIdentifier=%llu", &v4, 0xCu);
  }

  *(this + 20) = 1;
}

void WebKit::ServiceWorkerDebuggableProxy::unpauseForResolvedAutomaticInspection(WebKit::ServiceWorkerDebuggableProxy *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED640C20;
  if (os_log_type_enabled(qword_1ED640C20, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 6);
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "ServiceWorkerDebuggableProxy::unpauseForResolvedAutomaticInspection: serviceWorkerIdentifier=%llu", buf, 0xCu);
  }

  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      atomic_fetch_add((v6 + 16), 1u);
      v7 = IPC::Encoder::operator new(0x238, v3);
      *v7 = 3085;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v13 = v7;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v7, *(this + 6));
      buf[0] = 0;
      v15 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v6, &v13, 0, buf, 1);
      if (v15 == 1)
      {
        v9 = *buf;
        *buf = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        IPC::Encoder::~Encoder(v10, v8);
        bmalloc::api::tzoneFree(v11, v12);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16));
    }
  }
}

void WebKit::ServiceWorkerDebuggableProxy::~ServiceWorkerDebuggableProxy(WebKit::ServiceWorkerDebuggableProxy *this, void *a2)
{
  WebKit::ServiceWorkerDebuggableProxy::~ServiceWorkerDebuggableProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  MEMORY[0x1EEDCBEA8](this);
}

uint64_t WebKit::ServiceWorkerDebuggableProxy::url@<X0>(uint64_t this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = *(this + 40);
  if (v2)
  {
    atomic_fetch_add_explicit(v2, 2u, memory_order_relaxed);
  }

  *a2 = v2;
  return this;
}

uint64_t IPC::Encoder::operator<<<BOOL &>(IPC::Encoder *a1, char *a2)
{
  v3 = *a2;
  v4 = IPC::Encoder::grow(a1, 1uLL, 1);
  if (v5)
  {
    *v4 = v3;
    return a1;
  }

  else
  {
    result = 1067;
    __break(0xC471u);
  }

  return result;
}

void IPC::SharedFileHandle::create(uint64_t a1@<X8>)
{
  WTF::FileSystemImpl::FileHandle::FileHandle();
  WTF::FileSystemImpl::FileHandle::FileHandle();
  *(a1 + 4) = 1;
  WTF::FileSystemImpl::FileHandle::~FileHandle(v2);
}

uint64_t IPC::SharedFileHandle::toMachSendRight@<X0>(_DWORD *a1@<X8>)
{
  result = fileport_makeport();
  if (result != -1)
  {
    return WTF::MachSendRight::adopt(0);
  }

  *a1 = 0;
  return result;
}

uint64_t WebKit::sharedPreferencesForWebProcess@<X0>(WebKit *this@<X0>, const WebKit::WebPreferencesStore *a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 18) &= 0xC0u;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key = WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v7 = (a4 + 8);
  v9 = *(a4 + 8) & 0xFFFFFFFFFFFFFFFELL | WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key, a3);
  *(a4 + 8) = v9;
  if (v4)
  {
    v10 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key = WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key, v8))
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    v9 = *v7;
  }

  *v7 = v9 & 0xFFFFFFFFFFFFFFFDLL | v10;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, v8);
  v13 = 4;
  if (!BoolValueForKey)
  {
    v13 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFFFFBLL | v13;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v14 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key, v12);
  v16 = 8;
  if (!v14)
  {
    v16 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFFFF7 | v16;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v17 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key, v15);
  v19 = 16;
  if (!v17)
  {
    v19 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFFFEFLL | v19;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key = WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl;
  }

  v20 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key, v18);
  v22 = 32;
  if (!v20)
  {
    v22 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFFFDFLL | v22;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
  }

  v23 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, v21);
  v25 = 64;
  if (!v23)
  {
    v25 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFFFBFLL | v25;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v26 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, v24);
  v28 = 128;
  if (!v26)
  {
    v28 = 0;
  }

  v29 = *v7 & 0xFFFFFFFFFFFFFF7FLL | v28;
  *v7 = v29;
  if (v4)
  {
    v30 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key = WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key, v27))
    {
      v30 = 256;
    }

    else
    {
      v30 = 0;
    }

    v29 = *v7;
  }

  *v7 = v29 & 0xFFFFFFFFFFFFFEFFLL | v30;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v31 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key, v27);
  v33 = 512;
  if (!v31)
  {
    v33 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFFDFFLL | v33;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v34 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key, v32);
  v36 = 1024;
  if (!v34)
  {
    v36 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFFBFFLL | v36;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v37 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key, v35);
  v39 = 2048;
  if (!v37)
  {
    v39 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFF7FFLL | v39;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v40 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key, v38);
  v42 = 4096;
  if (!v40)
  {
    v42 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFEFFFLL | v42;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key = WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl;
  }

  v43 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key, v41);
  v45 = 0x2000;
  if (!v43)
  {
    v45 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFDFFFLL | v45;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::key = WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v46 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::key, v44);
  v48 = 0x4000;
  if (!v46)
  {
    v48 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFFBFFFLL | v48;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v49 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, v47);
  v51 = 0x8000;
  if (!v49)
  {
    v51 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFF7FFFLL | v51;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v52 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::key, v50);
  v54 = 0x10000;
  if (!v52)
  {
    v54 = 0;
  }

  v55 = *v7 & 0xFFFFFFFFFFFEFFFFLL | v54;
  *v7 = v55;
  if (v4)
  {
    v56 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::key = WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::key, v53))
    {
      v56 = 0x20000;
    }

    else
    {
      v56 = 0;
    }

    v55 = *v7;
  }

  *v7 = v55 & 0xFFFFFFFFFFFDFFFFLL | v56;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v57 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key, v53);
  v59 = 0x40000;
  if (!v57)
  {
    v59 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFFBFFFFLL | v59;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v60 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::key, v58);
  v62 = 0x80000;
  if (!v60)
  {
    v62 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFF7FFFFLL | v62;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v63 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::key, v61);
  v65 = 0x100000;
  if (!v63)
  {
    v65 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFEFFFFFLL | v65;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v66 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::key, v64);
  v68 = 0x200000;
  if (!v66)
  {
    v68 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFDFFFFFLL | v68;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key = WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v69 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key, v67);
  v71 = 0x400000;
  if (!v69)
  {
    v71 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFFBFFFFFLL | v71;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v72 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key, v70);
  v74 = 0x800000;
  if (!v72)
  {
    v74 = 0;
  }

  v75 = *v7 & 0xFFFFFFFFFF7FFFFFLL | v74;
  *v7 = v75;
  if (v4)
  {
    v76 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key = WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key, v73))
    {
      v76 = 0x1000000;
    }

    else
    {
      v76 = 0;
    }

    v75 = *v7;
  }

  *v7 = v75 & 0xFFFFFFFFFEFFFFFFLL | v76;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v77 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, v73);
  v79 = 0x2000000;
  if (!v77)
  {
    v79 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFDFFFFFFLL | v79;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v80 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::key, v78);
  v82 = 0x4000000;
  if (!v80)
  {
    v82 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFFBFFFFFFLL | v82;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key = WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v83 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key, v81);
  v85 = 0x8000000;
  if (!v83)
  {
    v85 = 0;
  }

  v86 = *v7 & 0xFFFFFFFFF7FFFFFFLL | v85;
  *v7 = v86;
  if (v4)
  {
    v87 = 0;
    v88 = v86 & 0xFFFFFFFFEFFFFFFFLL;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v89 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key, v84);
    v91 = 0x10000000;
    if (!v89)
    {
      v91 = 0;
    }

    *v7 = *v7 & 0xFFFFFFFFEFFFFFFFLL | v91;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v92 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key, v90);
    v87 = 0x20000000;
    if (!v92)
    {
      v87 = 0;
    }

    v88 = *v7;
  }

  *v7 = v88 & 0xFFFFFFFFDFFFFFFFLL | v87;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::key = WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v93 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::key, v84);
  v95 = 0x40000000;
  if (!v93)
  {
    v95 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFFBFFFFFFFLL | v95;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v96 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, v94);
  v98 = 0x80000000;
  if (!v96)
  {
    v98 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFF7FFFFFFFLL | v98;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v99 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v97);
  v101 = 0x100000000;
  if (!v99)
  {
    v101 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFEFFFFFFFFLL | v101;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v102 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, v100);
  v104 = 0x200000000;
  if (!v102)
  {
    v104 = 0;
  }

  *v7 = *v7 & 0xFFFFFFFDFFFFFFFFLL | v104;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v105 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key, v103);
  v107 = 0x400000000;
  if (!v105)
  {
    v107 = 0;
  }

  v108 = *v7 & 0xFFFFFFFBFFFFFFFFLL | v107;
  *v7 = v108;
  if (v4)
  {
    v109 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key = WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key, v106))
    {
      v109 = 0x800000000;
    }

    else
    {
      v109 = 0;
    }

    v108 = *v7;
  }

  *v7 = v108 & 0xFFFFFFF7FFFFFFFFLL | v109;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v110 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key, v106);
  v112 = 0x1000000000;
  if (!v110)
  {
    v112 = 0;
  }

  v113 = *v7 & 0xFFFFFFEFFFFFFFFFLL | v112;
  *v7 = v113;
  if (v4)
  {
    v114 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, v111))
    {
      v114 = 0x2000000000;
    }

    else
    {
      v114 = 0;
    }

    v113 = *v7;
  }

  *v7 = v113 & 0xFFFFFFDFFFFFFFFFLL | v114;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v115 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key, v111);
  v117 = 0x4000000000;
  if (!v115)
  {
    v117 = 0;
  }

  *v7 = *v7 & 0xFFFFFFBFFFFFFFFFLL | v117;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::key = WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v118 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::key, v116);
  v120 = 0x8000000000;
  if (!v118)
  {
    v120 = 0;
  }

  v121 = *v7 & 0xFFFFFF7FFFFFFFFFLL | v120;
  *v7 = v121;
  if (v4)
  {
    v122 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key, v119))
    {
      v122 = 0x10000000000;
    }

    else
    {
      v122 = 0;
    }

    v121 = *v7;
  }

  *v7 = v121 & 0xFFFFFEFFFFFFFFFFLL | v122;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key = WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v123 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key, v119);
  v125 = 0x20000000000;
  if (!v123)
  {
    v125 = 0;
  }

  *v7 = *v7 & 0xFFFFFDFFFFFFFFFFLL | v125;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v126 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key, v124);
  v128 = 0x40000000000;
  if (!v126)
  {
    v128 = 0;
  }

  *v7 = *v7 & 0xFFFFFBFFFFFFFFFFLL | v128;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v129 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key, v127);
  v131 = 0x80000000000;
  if (!v129)
  {
    v131 = 0;
  }

  *v7 = *v7 & 0xFFFFF7FFFFFFFFFFLL | v131;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v132 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key, v130);
  v134 = 0x100000000000;
  if (!v132)
  {
    v134 = 0;
  }

  *v7 = *v7 & 0xFFFFEFFFFFFFFFFFLL | v134;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v135 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key, v133);
  v137 = 0x200000000000;
  if (!v135)
  {
    v137 = 0;
  }

  *v7 = *v7 & 0xFFFFDFFFFFFFFFFFLL | v137;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v138 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, v136);
  v140 = 0x400000000000;
  if (!v138)
  {
    v140 = 0;
  }

  *v7 = *v7 & 0xFFFFBFFFFFFFFFFFLL | v140;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl;
  }

  v141 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key, v139);
  v143 = 0x800000000000;
  if (!v141)
  {
    v143 = 0;
  }

  *v7 = *v7 & 0xFFFF7FFFFFFFFFFFLL | v143;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v144 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key, v142);
  v146 = 0x1000000000000;
  if (!v144)
  {
    v146 = 0;
  }

  *v7 = *v7 & 0xFFFEFFFFFFFFFFFFLL | v146;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key = WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl;
  }

  v147 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key, v145);
  v149 = 0x2000000000000;
  if (!v147)
  {
    v149 = 0;
  }

  *v7 = *v7 & 0xFFFDFFFFFFFFFFFFLL | v149;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v150 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key, v148);
  v152 = 0x4000000000000;
  if (!v150)
  {
    v152 = 0;
  }

  *v7 = *v7 & 0xFFFBFFFFFFFFFFFFLL | v152;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v153 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::key, v151);
  v155 = 0x8000000000000;
  if (!v153)
  {
    v155 = 0;
  }

  v156 = *v7 & 0xFFF7FFFFFFFFFFFFLL | v155;
  *v7 = v156;
  if (v4)
  {
    v157 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key, v154))
    {
      v157 = 0x10000000000000;
    }

    else
    {
      v157 = 0;
    }

    v156 = *v7;
  }

  *v7 = v156 & 0xFFEFFFFFFFFFFFFFLL | v157;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v158 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key, v154);
  v160 = 0x20000000000000;
  if (!v158)
  {
    v160 = 0;
  }

  v161 = *v7 & 0xFFDFFFFFFFFFFFFFLL | v160;
  *v7 = v161;
  if (v4)
  {
    v162 = 0;
    v163 = v161 & 0xFFBFFFFFFFFFFFFFLL;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v164 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key, v159);
    v166 = 0x40000000000000;
    if (!v164)
    {
      v166 = 0;
    }

    *v7 = *v7 & 0xFFBFFFFFFFFFFFFFLL | v166;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v167 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::key, v165);
    v162 = 0x80000000000000;
    if (!v167)
    {
      v162 = 0;
    }

    v163 = *v7;
  }

  *v7 = v163 & 0xFF7FFFFFFFFFFFFFLL | v162;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::key = WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v168 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::key, v159);
  v170 = 0x100000000000000;
  if (!v168)
  {
    v170 = 0;
  }

  *v7 = *v7 & 0xFEFFFFFFFFFFFFFFLL | v170;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v171 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key, v169);
  v173 = 0x200000000000000;
  if (!v171)
  {
    v173 = 0;
  }

  v174 = *v7 & 0xFDFFFFFFFFFFFFFFLL | v173;
  *v7 = v174;
  if (v4)
  {
    v175 = 0;
    v176 = v174 & 0xFBFFFFFFFFFFFFFFLL;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v177 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key, v172);
    v179 = 0x400000000000000;
    if (!v177)
    {
      v179 = 0;
    }

    *v7 = *v7 & 0xFBFFFFFFFFFFFFFFLL | v179;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v180 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key, v178);
    v175 = 0x800000000000000;
    if (!v180)
    {
      v175 = 0;
    }

    v176 = *v7;
  }

  *v7 = v176 & 0xF7FFFFFFFFFFFFFFLL | v175;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shapeDetectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shapeDetectionKey(void)::key = WebKit::WebPreferencesKey::shapeDetectionKey(void)::$_0::operator() const(void)::impl;
  }

  v181 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::shapeDetectionKey(void)::key, v172);
  v183 = 0x1000000000000000;
  if (!v181)
  {
    v183 = 0;
  }

  *v7 = *v7 & 0xEFFFFFFFFFFFFFFFLL | v183;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key = WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v184 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key, v182);
  v186 = 0x2000000000000000;
  if (!v184)
  {
    v186 = 0;
  }

  *v7 = *v7 & 0xDFFFFFFFFFFFFFFFLL | v186;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v187 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v185);
  v189 = 0x4000000000000000;
  if (!v187)
  {
    v189 = 0;
  }

  v190 = *v7 & 0xBFFFFFFFFFFFFFFFLL | v189;
  *v7 = v190;
  if (v4)
  {
    v191 = 0;
    *v7 = v190 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key = WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v192 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key, v188);
    v194 = 0x8000000000000000;
    if (!v192)
    {
      v194 = 0;
    }

    *v7 = v194 & 0x8000000000000000 | *v7 & 0x7FFFFFFFFFFFFFFFLL;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    v191 = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key, v193);
  }

  *(a4 + 16) = *(a4 + 16) & 0xFFFE | v191;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::key = WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::key, v188))
  {
    v196 = 2;
  }

  else
  {
    v196 = 0;
  }

  *(a4 + 16) = *(a4 + 16) & 0xFFFD | v196;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key, v195))
  {
    v198 = 4;
  }

  else
  {
    v198 = 0;
  }

  *(a4 + 16) = *(a4 + 16) & 0xFFFB | v198;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::key = WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::key, v197))
  {
    v200 = 8;
  }

  else
  {
    v200 = 0;
  }

  *(a4 + 16) = *(a4 + 16) & 0xFFF7 | v200;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key = WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key, v199))
  {
    v202 = 16;
  }

  else
  {
    v202 = 0;
  }

  *(a4 + 16) = *(a4 + 16) & 0xFFEF | v202;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key = WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key, v201))
  {
    v204 = 32;
  }

  else
  {
    v204 = 0;
  }

  *(a4 + 16) = *(a4 + 16) & 0xFFDF | v204;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key = WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key, v203))
  {
    v206 = 64;
  }

  else
  {
    v206 = 0;
  }

  *(a4 + 16) = *(a4 + 16) & 0xFFBF | v206;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key = WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key, v205))
  {
    v208 = 128;
  }

  else
  {
    v208 = 0;
  }

  v209 = *(a4 + 16) & 0xFF7F | v208;
  *(a4 + 16) = v209;
  if (v4)
  {
    v210 = 0;
    v211 = v209 & 0x80FF;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key, v207))
    {
      v213 = 256;
    }

    else
    {
      v213 = 0;
    }

    *(a4 + 16) = *(a4 + 16) & 0xFEFF | v213;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webShareEnabledKey(void)::key = WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webShareEnabledKey(void)::key, v212))
    {
      v215 = 512;
    }

    else
    {
      v215 = 0;
    }

    *(a4 + 16) = *(a4 + 16) & 0xFDFF | v215;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key, v214))
    {
      v217 = 1024;
    }

    else
    {
      v217 = 0;
    }

    *(a4 + 16) = *(a4 + 16) & 0xFBFF | v217;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGLEnabledKey(void)::key = WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webGLEnabledKey(void)::key, v216))
    {
      v219 = 2048;
    }

    else
    {
      v219 = 0;
    }

    *(a4 + 16) = *(a4 + 16) & 0xF7FF | v219;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key, v218))
    {
      v221 = 4096;
    }

    else
    {
      v221 = 0;
    }

    *(a4 + 16) = *(a4 + 16) & 0xEFFF | v221;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key, v220))
    {
      v223 = 0x2000;
    }

    else
    {
      v223 = 0;
    }

    *(a4 + 16) = *(a4 + 16) & 0xDFFF | v223;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key, v222))
    {
      v225 = 0x4000;
    }

    else
    {
      v225 = 0;
    }

    *(a4 + 16) = *(a4 + 16) & 0xBFFF | v225;
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key = WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key, v224))
    {
      v210 = 0x8000;
    }

    else
    {
      v210 = 0;
    }

    v211 = *(a4 + 16);
  }

  *(a4 + 16) = v211 & 0x7FFF | v210;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  v227 = *(a4 + 18) & 0xFE | WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::key, v207);
  *(a4 + 18) = v227;
  if (v4)
  {
    v228 = 0;
  }

  else
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webTransportEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webTransportEnabledKey(void)::key = WebKit::WebPreferencesKey::webTransportEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webTransportEnabledKey(void)::key, v226))
    {
      v228 = 2;
    }

    else
    {
      v228 = 0;
    }

    v227 = *(a4 + 18);
  }

  *(a4 + 18) = v227 & 0xFD | v228;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key, v226))
  {
    v230 = 4;
  }

  else
  {
    v230 = 0;
  }

  *(a4 + 18) = *(a4 + 18) & 0xFB | v230;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key, v229))
  {
    v232 = 8;
  }

  else
  {
    v232 = 0;
  }

  *(a4 + 18) = *(a4 + 18) & 0xF7 | v232;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::key = WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::key, v231))
  {
    v234 = 16;
  }

  else
  {
    v234 = 0;
  }

  *(a4 + 18) = *(a4 + 18) & 0xEF | v234;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::key = WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  result = WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::key, v233);
  if (result)
  {
    v236 = 32;
  }

  else
  {
    v236 = 0;
  }

  *(a4 + 18) = *(a4 + 18) & 0xDF | v236;
  return result;
}

uint64_t WebKit::updateSharedPreferencesForWebProcess(uint64_t a1, WebKit::WebPreferencesStore *this, const WTF::StringImpl *a3)
{
  v3 = a3;
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key = WebKit::WebPreferencesKey::webSocketEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webSocketEnabledKey(void)::key, a3) && (v7 = *(a1 + 8), (v7 & 1) == 0))
  {
    *(a1 + 8) = v7 | 1;
    v8 = 1;
    if (v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if (v3)
    {
      goto LABEL_13;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key = WebKit::WebPreferencesKey::webAudioEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webAudioEnabledKey(void)::key, v6))
  {
    v9 = *(a1 + 8);
    if ((v9 & 2) == 0)
    {
      *(a1 + 8) = v9 | 2;
      v8 = 1;
    }
  }

LABEL_13:
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key = WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::allowTestOnlyIPCKey(void)::key, v6))
  {
    v11 = *(a1 + 8);
    if ((v11 & 4) == 0)
    {
      *(a1 + 8) = v11 | 4;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoPresentationModeAPIEnabledKey(void)::key, v10))
  {
    v13 = *(a1 + 8);
    if ((v13 & 8) == 0)
    {
      *(a1 + 8) = v13 | 8;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoPresentationManagerEnabledKey(void)::key, v12))
  {
    v15 = *(a1 + 8);
    if ((v15 & 0x10) == 0)
    {
      *(a1 + 8) = v15 | 0x10;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key = WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoFullscreenRequiresElementFullscreenKey(void)::key, v14))
  {
    v17 = *(a1 + 8);
    if ((v17 & 0x20) == 0)
    {
      *(a1 + 8) = v17 | 0x20;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key = WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::usesSingleWebProcessKey(void)::key, v16))
  {
    v19 = *(a1 + 8);
    if ((v19 & 0x40) == 0)
    {
      *(a1 + 8) = v19 | 0x40;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::applePayEnabledKey(void)::key = WebKit::WebPreferencesKey::applePayEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::applePayEnabledKey(void)::key, v18))
  {
    v21 = *(a1 + 8);
    if ((v21 & 0x80) == 0)
    {
      *(a1 + 8) = v21 | 0x80;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key = WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::systemPreviewEnabledKey(void)::key, v20))
    {
      v22 = *(a1 + 8);
      if ((v22 & 0x100) == 0)
      {
        *(a1 + 8) = v22 | 0x100;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaControlsContextMenusEnabledKey(void)::key, v20))
  {
    v24 = *(a1 + 8);
    if ((v24 & 0x200) == 0)
    {
      *(a1 + 8) = v24 | 0x200;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::deviceOrientationEventEnabledKey(void)::key, v23))
  {
    v26 = *(a1 + 8);
    if ((v26 & 0x400) == 0)
    {
      *(a1 + 8) = v26 | 0x400;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::deviceOrientationPermissionAPIEnabledKey(void)::key, v25))
  {
    v28 = *(a1 + 8);
    if ((v28 & 0x800) == 0)
    {
      *(a1 + 8) = v28 | 0x800;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::encryptedMediaAPIEnabledKey(void)::key, v27))
  {
    v30 = *(a1 + 8);
    if ((v30 & 0x1000) == 0)
    {
      *(a1 + 8) = v30 | 0x1000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key = WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::allowPrivacySensitiveOperationsInNonPersistentDataStoresKey(void)::key, v29))
  {
    v32 = *(a1 + 8);
    if ((v32 & 0x2000) == 0)
    {
      *(a1 + 8) = v32 | 0x2000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::key = WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::appBadgeEnabledKey(void)::key, v31))
  {
    v34 = *(a1 + 8);
    if ((v34 & 0x4000) == 0)
    {
      *(a1 + 8) = v34 | 0x4000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key = WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::attachmentElementEnabledKey(void)::key, v33))
  {
    v36 = *(a1 + 8);
    if ((v36 & 0x8000) == 0)
    {
      *(a1 + 8) = v36 | 0x8000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::builtInNotificationsEnabledKey(void)::key, v35))
  {
    v38 = *(a1 + 8);
    if ((v38 & 0x10000) == 0)
    {
      *(a1 + 8) = v38 | 0x10000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::key = WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::canvasPixelFormatEnabledKey(void)::key, v37))
    {
      v39 = *(a1 + 8);
      if ((v39 & 0x20000) == 0)
      {
        *(a1 + 8) = v39 | 0x20000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeColorEnabledKey(void)::key, v37))
  {
    v41 = *(a1 + 8);
    if ((v41 & 0x40000) == 0)
    {
      *(a1 + 8) = v41 | 0x40000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::contactPickerAPIEnabledKey(void)::key, v40))
  {
    v43 = *(a1 + 8);
    if ((v43 & 0x80000) == 0)
    {
      *(a1 + 8) = v43 | 0x80000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::cookieConsentAPIEnabledKey(void)::key, v42))
  {
    v45 = *(a1 + 8);
    if ((v45 & 0x100000) == 0)
    {
      *(a1 + 8) = v45 | 0x100000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::cookieStoreManagerEnabledKey(void)::key, v44))
  {
    v47 = *(a1 + 8);
    if ((v47 & 0x200000) == 0)
    {
      *(a1 + 8) = v47 | 0x200000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key = WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::dataListElementEnabledKey(void)::key, v46))
  {
    v49 = *(a1 + 8);
    if ((v49 & 0x400000) == 0)
    {
      *(a1 + 8) = v49 | 0x400000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeDateEnabledKey(void)::key, v48))
  {
    v51 = *(a1 + 8);
    if ((v51 & 0x800000) == 0)
    {
      *(a1 + 8) = v51 | 0x800000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key = WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::digitalCredentialsEnabledKey(void)::key, v50))
    {
      v52 = *(a1 + 8);
      if ((v52 & 0x1000000) == 0)
      {
        *(a1 + 8) = v52 | 0x1000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::legacyEncryptedMediaAPIEnabledKey(void)::key, v50))
  {
    v54 = *(a1 + 8);
    if ((v54 & 0x2000000) == 0)
    {
      *(a1 + 8) = v54 | 0x2000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::backgroundFetchAPIEnabledKey(void)::key, v53))
  {
    v56 = *(a1 + 8);
    if ((v56 & 0x4000000) == 0)
    {
      *(a1 + 8) = v56 | 0x4000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key = WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::blobFileAccessEnforcementEnabledKey(void)::key, v55))
  {
    v58 = *(a1 + 8);
    if ((v58 & 0x8000000) == 0)
    {
      *(a1 + 8) = v58 | 0x8000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::fileSystemEnabledKey(void)::key, v57))
    {
      v60 = *(a1 + 8);
      if ((v60 & 0x10000000) == 0)
      {
        *(a1 + 8) = v60 | 0x10000000;
        v8 = 1;
      }
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key = WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::fileSystemWritableStreamEnabledKey(void)::key, v59))
    {
      v61 = *(a1 + 8);
      if ((v61 & 0x20000000) == 0)
      {
        *(a1 + 8) = v61 | 0x20000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::key = WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::forceLockdownFontParserEnabledKey(void)::key, v57))
  {
    v63 = *(a1 + 8);
    if ((v63 & 0x40000000) == 0)
    {
      *(a1 + 8) = v63 | 0x40000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key = WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::fullScreenEnabledKey(void)::key, v62))
  {
    v65 = *(a1 + 8);
    if ((v65 & 0x80000000) == 0)
    {
      *(a1 + 8) = v65 | 0x80000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForDOMRenderingEnabledKey(void)::key, v64))
  {
    v67 = *(a1 + 8);
    if ((v67 & 0x100000000) == 0)
    {
      *(a1 + 8) = v67 | 0x100000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForMediaEnabledKey(void)::key, v66))
  {
    v69 = *(a1 + 8);
    if ((v69 & 0x200000000) == 0)
    {
      *(a1 + 8) = v69 | 0x200000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key = WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useGPUProcessForWebGLEnabledKey(void)::key, v68))
  {
    v71 = *(a1 + 8);
    if ((v71 & 0x400000000) == 0)
    {
      *(a1 + 8) = v71 | 0x400000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key = WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::gamepadsEnabledKey(void)::key, v70))
    {
      v72 = *(a1 + 8);
      if ((v72 & 0x800000000) == 0)
      {
        *(a1 + 8) = v72 | 0x800000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::geolocationAPIEnabledKey(void)::key, v70))
  {
    v74 = *(a1 + 8);
    if ((v74 & 0x1000000000) == 0)
    {
      *(a1 + 8) = v74 | 0x1000000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key = WebKit::WebPreferencesKey::modelElementEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::modelElementEnabledKey(void)::key, v73))
    {
      v75 = *(a1 + 8);
      if ((v75 & 0x2000000000) == 0)
      {
        *(a1 + 8) = v75 | 0x2000000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeColorEnhancementsEnabledKey(void)::key, v73))
  {
    v77 = *(a1 + 8);
    if ((v77 & 0x4000000000) == 0)
    {
      *(a1 + 8) = v77 | 0x4000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::key = WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::ignoreIframeEmbeddingProtectionsEnabledKey(void)::key, v76))
  {
    v79 = *(a1 + 8);
    if ((v79 & 0x8000000000) == 0)
    {
      *(a1 + 8) = v79 | 0x8000000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::indexedDBAPIEnabledKey(void)::key, v78))
    {
      v80 = *(a1 + 8);
      if ((v80 & 0x10000000000) == 0)
      {
        *(a1 + 8) = v80 | 0x10000000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key = WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::lockdownFontParserEnabledKey(void)::key, v78))
  {
    v82 = *(a1 + 8);
    if ((v82 & 0x20000000000) == 0)
    {
      *(a1 + 8) = v82 | 0x20000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::managedMediaSourceEnabledKey(void)::key, v81))
  {
    v84 = *(a1 + 8);
    if ((v84 & 0x40000000000) == 0)
    {
      *(a1 + 8) = v84 | 0x40000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaCapabilityGrantsEnabledKey(void)::key, v83))
  {
    v86 = *(a1 + 8);
    if ((v86 & 0x80000000000) == 0)
    {
      *(a1 + 8) = v86 | 0x80000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaPlaybackEnabledKey(void)::key, v85))
  {
    v88 = *(a1 + 8);
    if ((v88 & 0x100000000000) == 0)
    {
      *(a1 + 8) = v88 | 0x100000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSessionEnabledKey(void)::key, v87))
  {
    v90 = *(a1 + 8);
    if ((v90 & 0x200000000000) == 0)
    {
      *(a1 + 8) = v90 | 0x200000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSourceEnabledKey(void)::key, v89))
  {
    v92 = *(a1 + 8);
    if ((v92 & 0x400000000000) == 0)
    {
      *(a1 + 8) = v92 | 0x400000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaRecorderEnabledWebMKey(void)::key, v91))
  {
    v94 = *(a1 + 8);
    if ((v94 & 0x800000000000) == 0)
    {
      *(a1 + 8) = v94 | 0x800000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key = WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaRecorderEnabledKey(void)::key, v93))
  {
    v96 = *(a1 + 8);
    if ((v96 & 0x1000000000000) == 0)
    {
      *(a1 + 8) = v96 | 0x1000000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key = WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::mediaSourcePrefersDecompressionSessionKey(void)::key, v95))
  {
    v98 = *(a1 + 8);
    if ((v98 & 0x2000000000000) == 0)
    {
      *(a1 + 8) = v98 | 0x2000000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeMonthEnabledKey(void)::key, v97))
  {
    v100 = *(a1 + 8);
    if ((v100 & 0x4000000000000) == 0)
    {
      *(a1 + 8) = v100 | 0x4000000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::notificationEventEnabledKey(void)::key, v99))
  {
    v102 = *(a1 + 8);
    if ((v102 & 0x8000000000000) == 0)
    {
      *(a1 + 8) = v102 | 0x8000000000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key = WebKit::WebPreferencesKey::notificationsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::notificationsEnabledKey(void)::key, v101))
    {
      v103 = *(a1 + 8);
      if ((v103 & 0x10000000000000) == 0)
      {
        *(a1 + 8) = v103 | 0x10000000000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::permissionsAPIEnabledKey(void)::key, v101))
  {
    v105 = *(a1 + 8);
    if ((v105 & 0x20000000000000) == 0)
    {
      *(a1 + 8) = v105 | 0x20000000000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::pushAPIEnabledKey(void)::key, v104))
    {
      v107 = *(a1 + 8);
      if ((v107 & 0x40000000000000) == 0)
      {
        *(a1 + 8) = v107 | 0x40000000000000;
        v8 = 1;
      }
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::key = WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::remoteMediaSessionManagerEnabledKey(void)::key, v106))
    {
      v108 = *(a1 + 8);
      if ((v108 & 0x80000000000000) == 0)
      {
        *(a1 + 8) = v108 | 0x80000000000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::key = WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::loginStatusAPIRequiresWebAuthnEnabledKey(void)::key, v104))
  {
    v110 = *(a1 + 8);
    if ((v110 & 0x100000000000000) == 0)
    {
      *(a1 + 8) = v110 | 0x100000000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::screenOrientationAPIEnabledKey(void)::key, v109))
  {
    v112 = *(a1 + 8);
    if ((v112 & 0x200000000000000) == 0)
    {
      *(a1 + 8) = v112 | 0x200000000000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkerNavigationPreloadEnabledKey(void)::key, v111))
    {
      v114 = *(a1 + 8);
      if ((v114 & 0x400000000000000) == 0)
      {
        *(a1 + 8) = v114 | 0x400000000000000;
        v8 = 1;
      }
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key = WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::serviceWorkersEnabledKey(void)::key, v113))
    {
      v115 = *(a1 + 8);
      if ((v115 & 0x800000000000000) == 0)
      {
        *(a1 + 8) = v115 | 0x800000000000000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shapeDetectionKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shapeDetectionKey(void)::key = WebKit::WebPreferencesKey::shapeDetectionKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::shapeDetectionKey(void)::key, v111))
  {
    v117 = *(a1 + 8);
    if ((v117 & 0x1000000000000000) == 0)
    {
      *(a1 + 8) = v117 | 0x1000000000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key = WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::sharedWorkerEnabledKey(void)::key, v116))
  {
    v119 = *(a1 + 8);
    if ((v119 & 0x2000000000000000) == 0)
    {
      *(a1 + 8) = v119 | 0x2000000000000000;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key = WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::siteIsolationEnabledKey(void)::key, v118))
  {
    v121 = *(a1 + 8);
    if ((v121 & 0x4000000000000000) == 0)
    {
      *(a1 + 8) = v121 | 0x4000000000000000;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key = WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::speechRecognitionEnabledKey(void)::key, v120))
    {
      v123 = *(a1 + 8);
      if ((v123 & 0x8000000000000000) == 0)
      {
        *(a1 + 8) = v123 | 0x8000000000000000;
        v8 = 1;
      }
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::speechSynthesisAPIEnabledKey(void)::key, v122))
    {
      v124 = *(a1 + 16);
      if ((v124 & 1) == 0)
      {
        *(a1 + 16) = v124 | 1;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::key = WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::textRecognitionInVideosEnabledKey(void)::key, v120))
  {
    v126 = *(a1 + 16);
    if ((v126 & 2) == 0)
    {
      *(a1 + 16) = v126 | 2;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeTimeEnabledKey(void)::key, v125))
  {
    v128 = *(a1 + 16);
    if ((v128 & 4) == 0)
    {
      *(a1 + 16) = v128 | 4;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::key = WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::useAVCaptureDeviceRotationCoordinatorAPIKey(void)::key, v127))
  {
    v130 = *(a1 + 16);
    if ((v130 & 8) == 0)
    {
      *(a1 + 16) = v130 | 8;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key = WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::usesWebContentRestrictionsForFilterKey(void)::key, v129))
  {
    v132 = *(a1 + 16);
    if ((v132 & 0x10) == 0)
    {
      *(a1 + 16) = v132 | 0x10;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key = WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoRendererProtectedFallbackDisabledKey(void)::key, v131))
  {
    v134 = *(a1 + 16);
    if ((v134 & 0x20) == 0)
    {
      *(a1 + 16) = v134 | 0x20;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key = WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::videoRendererUseDecompressionSessionForProtectedKey(void)::key, v133))
  {
    v136 = *(a1 + 16);
    if ((v136 & 0x40) == 0)
    {
      *(a1 + 16) = v136 | 0x40;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key = WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webAuthenticationEnabledKey(void)::key, v135))
  {
    v138 = *(a1 + 16);
    if ((v138 & 0x80) == 0)
    {
      *(a1 + 16) = v138 | 0x80;
      v8 = 1;
    }
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key = WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webLocksAPIEnabledKey(void)::key, v137) && (*(a1 + 16) & 0x100) == 0)
    {
      *(a1 + 16) |= 0x100u;
      v8 = 1;
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webShareEnabledKey(void)::key = WebKit::WebPreferencesKey::webShareEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webShareEnabledKey(void)::key, v139) && (*(a1 + 16) & 0x200) == 0)
    {
      *(a1 + 16) |= 0x200u;
      v8 = 1;
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key = WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webCodecsVideoEnabledKey(void)::key, v140) && (*(a1 + 16) & 0x400) == 0)
    {
      *(a1 + 16) |= 0x400u;
      v8 = 1;
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGLEnabledKey(void)::key = WebKit::WebPreferencesKey::webGLEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webGLEnabledKey(void)::key, v141) && (*(a1 + 16) & 0x800) == 0)
    {
      *(a1 + 16) |= 0x800u;
      v8 = 1;
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webGPUHDREnabledKey(void)::key, v142) && (*(a1 + 16) & 0x1000) == 0)
    {
      *(a1 + 16) |= 0x1000u;
      v8 = 1;
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key = WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webXRWebGPUBindingsEnabledKey(void)::key, v143) && (*(a1 + 16) & 0x2000) == 0)
    {
      *(a1 + 16) |= 0x2000u;
      v8 = 1;
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key = WebKit::WebPreferencesKey::webGPUEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webGPUEnabledKey(void)::key, v144) && (*(a1 + 16) & 0x4000) == 0)
    {
      *(a1 + 16) |= 0x4000u;
      v8 = 1;
    }

    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key = WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::peerConnectionEnabledKey(void)::key, v145))
    {
      v146 = *(a1 + 16);
      if ((v146 & 0x80000000) == 0)
      {
        *(a1 + 16) = v146 | 0x8000;
        v8 = 1;
      }
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::key = WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webRTCInterfaceMonitoringViaNWEnabledKey(void)::key, v137) && (*(a1 + 18) & 1) == 0)
  {
    *(a1 + 18) |= 1u;
    v8 = 1;
  }

  if ((v3 & 1) == 0)
  {
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::webTransportEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::webTransportEnabledKey(void)::key = WebKit::WebPreferencesKey::webTransportEnabledKey(void)::$_0::operator() const(void)::impl;
    }

    if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::webTransportEnabledKey(void)::key, v147) && (*(a1 + 18) & 2) == 0)
    {
      *(a1 + 18) |= 2u;
      v8 = 1;
    }
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeWeekEnabledKey(void)::key, v147) && (*(a1 + 18) & 4) == 0)
  {
    *(a1 + 18) |= 4u;
    v8 = 1;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key = WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::inputTypeDateTimeLocalEnabledKey(void)::key, v148) && (*(a1 + 18) & 8) == 0)
  {
    *(a1 + 18) |= 8u;
    v8 = 1;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::key = WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledForAriaOwnsKey(void)::key, v149) && (*(a1 + 18) & 0x10) == 0)
  {
    *(a1 + 18) |= 0x10u;
    v8 = 1;
  }

  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::key = WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  if (WebKit::WebPreferencesStore::getBoolValueForKey(this, &WebKit::WebPreferencesKey::shadowRootReferenceTargetEnabledKey(void)::key, v150) && (*(a1 + 18) & 0x20) == 0)
  {
    *(a1 + 18) |= 0x20u;
    return 1;
  }

  return v8;
}

uint64_t WebKit::SimulatedInputSourceState::emptyStateForSourceType@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0;
  *(a2 + 52) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 84) = 0;
  *(a2 + 92) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  if ((result - 2) >= 2 && result != 5)
  {
    if (result != 4)
    {
      return result;
    }

    *(a2 + 92) = 1;
    *(a2 + 84) = 0;
  }

  *(a2 + 80) = 1;
  *(a2 + 72) = 0;
  return result;
}

void *WebKit::SimulatedInputKeyFrame::keyFrameToResetInputSources@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(*a1);
  v7 = result;
  v8 = v5;
  if (v3)
  {
    v9 = (v3 + 16 * *(v3 - 4));
    v27 = 0uLL;
    v10 = *(v3 - 12);
    if (v10)
    {
      if (v10 >= 0x2222223)
      {
        __break(0xC471u);
        return result;
      }

      v11 = 120 * v10;
      v3 = WTF::fastMalloc((120 * v10));
      v26 = v11 / 0x78;
    }

    else
    {
      v26 = 0;
      v3 = 0;
    }
  }

  else
  {
    v26 = 0;
    v9 = 0;
    v27 = 0uLL;
  }

  if (v7 != v9)
  {
    v12 = 0;
    while (1)
    {
      v13 = v7[1];
      v14 = *(v13 + 4);
      v38[4] = 0;
      v38[8] = 0;
      v38[12] = 0;
      v38[16] = 0;
      v38[20] = 0;
      v39 = 0;
      v40 = 0;
      v41[0] = 0;
      v41[8] = 0;
      v41[12] = 0;
      v41[20] = 0;
      v41[24] = 0;
      v42 = 0;
      v38[0] = 0;
      if ((v14 - 2) < 2 || v14 == 5)
      {
        goto LABEL_16;
      }

      if (v14 == 4)
      {
        break;
      }

LABEL_17:
      v28 = v13;
      v29 = 0u;
      v30 = 0u;
      memset(v37, 0, sizeof(v37));
      *v31 = *v38;
      *&v31[13] = *&v38[13];
      LOBYTE(v32) = 0;
      v33 = 0;
      v34 = *v41;
      v35 = *&v41[16];
      v36 = v42;
      WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(v37, v5);
      if (v37[0])
      {
        WTF::fastFree((v37[0] - 16), v16);
      }

      v17 = v3 + 120 * v12;
      *v17 = v28;
      v18 = v29;
      *&v29 = 0;
      *(v17 + 8) = v18;
      v19 = *(&v29 + 1);
      *(&v29 + 1) = 0;
      *(v17 + 16) = v19;
      v20 = v30;
      *&v30 = 0;
      *(v17 + 24) = v20;
      v21 = *(&v30 + 1);
      *(&v30 + 1) = 0;
      *(v17 + 32) = v21;
      v22 = *v31;
      *(v17 + 53) = *&v31[13];
      *(v17 + 40) = v22;
      *(v17 + 64) = 0;
      *(v17 + 72) = 0;
      if (v33 == 1)
      {
        v23 = v32;
        v32 = 0;
        *(v17 + 64) = v23;
        *(v17 + 72) = 1;
      }

      v24 = v34;
      v25 = v35;
      *(v17 + 112) = v36;
      *(v17 + 80) = v24;
      *(v17 + 96) = v25;
      WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(&v29, v16);
      if (v29)
      {
        WTF::fastFree((v29 - 16), v5);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v8 && (*v7 + 1) <= 1);
      ++v12;
      if (v7 == v9)
      {
        goto LABEL_26;
      }
    }

    v41[20] = 1;
    *&v41[12] = 0;
LABEL_16:
    v41[8] = 1;
    *v41 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_26:
  *&v6 = 0;
  v27 = v6;
  *a2 = v3;
  *(a2 + 8) = v26;
  *(a2 + 12) = v12;
  return WTF::Vector<std::pair<WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v27, v5);
}

uint64_t WebKit::SimulatedInputDispatcher::SimulatedInputDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1;
  v6 = WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 24), a2 + 16);
  v7 = *(a2 + 24);
  atomic_fetch_add(v7, 1u);
  *(a1 + 8) = v7;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v8 = WTF::RunLoop::currentSingleton(v6);
  v9 = v8;
  while (1)
  {
    v10 = *(v8 + 8);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = *(v8 + 8);
    atomic_compare_exchange_strong_explicit((v8 + 8), &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_6:
  v14 = v9;
  v12 = WTF::fastMalloc(0x20);
  *v12 = &unk_1F10EB510;
  v12[1] = a1;
  v12[2] = WebKit::SimulatedInputDispatcher::keyFrameTransitionDurationTimerFired;
  v12[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 56) = &unk_1F10E6DC8;
  *(a1 + 96) = v12;
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v14 + 8));
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

uint64_t WebKit::SimulatedInputDispatcher::keyFrameTransitionDurationTimerFired(WebKit::SimulatedInputDispatcher *this)
{
  WTF::RunLoop::TimerBase::stop((this + 56));
  result = WebKit::SimulatedInputDispatcher::isKeyFrameTransitionComplete(this);
  if (result)
  {
    v9 = *(this + 6);
    *(this + 6) = 0;
    v5[0] = 0;
    v8 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(&v9, v5);
    if (v8 == 1 && v7 == 1)
    {
      v4 = v6;
      v6 = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v3);
        }
      }
    }

    result = v9;
    v9 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void WebKit::SimulatedInputDispatcher::~SimulatedInputDispatcher(WebKit::SimulatedInputDispatcher *this, WTF::StringImpl *a2)
{
  WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 104, a2);
  *(this + 7) = &unk_1F10E6DC8;
  v3 = *(this + 12);
  *(this + 12) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::RunLoop::TimerBase::~TimerBase((this + 56));
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, v4);
  }

  if (*this != 1)
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::SimulatedInputDispatcher::isKeyFrameTransitionComplete(uint64_t this)
{
  v1 = *(this + 120);
  if (*(this + 116) <= v1)
  {
    __break(0xC471u);
  }

  else if (*(*(this + 104) + 16 * v1 + 12) <= *(this + 124))
  {
    return WTF::RunLoop::TimerBase::isActive((this + 56)) ^ 1;
  }

  else
  {
    return 0;
  }

  return this;
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  *a1 = 0;
  LOBYTE(v6) = 0;
  v9 = 0;
  if (*(a2 + 24) == 1)
  {
    v6 = *a2;
    LOBYTE(v7) = 0;
    v8 = 0;
    if (*(a2 + 16) == 1)
    {
      v2 = *(a2 + 8);
      *(a2 + 8) = 0;
      v7 = v2;
      v8 = 1;
    }

    v9 = 1;
  }

  WTF::Function<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(&v10, &v6);
  if (v9 == 1 && v8 == 1)
  {
    v4 = v7;
    v7 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, v3);
      }
    }
  }

  result = v10;
  v10 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_uint *WebKit::SimulatedInputDispatcher::transitionToNextKeyFrame(WebKit::SimulatedInputDispatcher *this)
{
  v2 = *(this + 29);
  v3 = *(this + 30);
  v4 = v3 + 1;
  *(this + 30) = v4;
  if (v2 == v4)
  {
    LOBYTE(v14[0]) = 0;
    v15 = 0;
    return WebKit::SimulatedInputDispatcher::finishDispatching(this, v14);
  }

  else
  {
    if (v2 <= v3 || v2 <= v4)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8E078CLL);
    }

    v6 = *(this + 13) + 16 * v4;
    ++*this;
    v7 = WTF::fastMalloc(0x18);
    *v7 = &unk_1F10EB538;
    v7[1] = this;
    v7[2] = this;
    *(this + 31) = 0;
    v8 = *(this + 6);
    *(this + 6) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(v6 + 12);
    v10 = 0.0;
    if (v9)
    {
      v11 = (*v6 + 112);
      v12 = 120 * v9;
      do
      {
        v13 = 0.0;
        if (*v11 == 1)
        {
          v13 = *(v11 - 1);
        }

        if (v10 < v13)
        {
          v10 = v13;
        }

        v11 += 15;
        v12 -= 120;
      }

      while (v12);
    }

    WTF::RunLoop::TimerBase::start();

    return WebKit::SimulatedInputDispatcher::transitionToNextInputSourceState(this);
  }
}

uint64_t WebKit::SimulatedInputDispatcher::finishDispatching(uint64_t a1, int *a2)
{
  WTF::RunLoop::TimerBase::stop((a1 + 56));
  v17 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = 0;
  }

  if (*(a1 + 112))
  {
    v5 = *(a1 + 116);
    if (v5)
    {
      v6 = *(a1 + 104);
      v7 = 16 * v5;
      do
      {
        v6 = WTF::Vector<std::pair<WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v6, v4) + 16;
        v7 -= 16;
      }

      while (v7);
      *(a1 + 116) = 0;
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      WTF::fastFree(v8, v4);
    }
  }

  *(a1 + 120) = 0;
  LOBYTE(v13) = 0;
  v16 = 0;
  if (*(a2 + 24) == 1)
  {
    v13 = *a2;
    LOBYTE(v14) = 0;
    v15 = 0;
    if (*(a2 + 16) == 1)
    {
      v9 = *(a2 + 1);
      if (v9)
      {
        atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
      }

      v14 = v9;
      v15 = 1;
    }

    v16 = 1;
  }

  WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(&v17, &v13);
  if (v16 == 1 && v15 == 1)
  {
    v11 = v14;
    v14 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v10);
      }
    }
  }

  result = v17;
  v17 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_uint *WebKit::SimulatedInputDispatcher::transitionToNextInputSourceState(WebKit::SimulatedInputDispatcher *this)
{
  result = WebKit::SimulatedInputDispatcher::isKeyFrameTransitionComplete(this);
  if (result)
  {
    v134 = *(this + 6);
    *(this + 6) = 0;
    v126[0] = 0;
    v129 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(&v134, v126);
    if (v129 == 1 && v128 == 1)
    {
      v4 = v127;
      v127 = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, v3);
        }
      }
    }

    result = v134;
    v134 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  v5 = *(this + 30);
  if (*(this + 29) <= v5)
  {
    goto LABEL_236;
  }

  v6 = *(this + 31);
  v7 = *(this + 13) + 16 * v5;
  v8 = *(v7 + 12);
  if (v8 == v6)
  {
    return result;
  }

  if (v8 <= v6)
  {
    __break(0xC471u);
    JUMPOUT(0x19D8E167CLL);
  }

  v9 = *v7 + 120 * v6;
  v11 = *v9;
  v10 = (v9 + 8);
  ++*v11;
  ++*this;
  v12 = WTF::fastMalloc(0x18);
  *v12 = &unk_1F10EB560;
  v12[1] = this;
  v12[2] = this;
  v13 = (v11 + 2);
  ++*this;
  ++*v11;
  v16 = WTF::fastMalloc(0x30);
  v17 = &unk_1F10EB5B0;
  *v16 = &unk_1F10EB5B0;
  v16[1] = this;
  v16[2] = this;
  v16[3] = v11;
  v16[4] = v9 + 8;
  v16[5] = v12;
  v133 = v16;
  v125 = v11;
  v18 = v11[1];
  if (v18 > 1)
  {
    if (v18 > 3)
    {
      if (v18 == 4)
      {
        __break(0xC471u);
        JUMPOUT(0x19D8E179CLL);
      }

      if (v18 != 5)
      {
        goto LABEL_107;
      }
    }

    else if (v18 == 3)
    {
      if (*(v125 + 88))
      {
        v29 = *(v125 + 80);
      }

      else
      {
        v29 = 0;
      }

      v30 = *(v9 + 80);
      v31 = *(v9 + 88);
      if (*(v9 + 60))
      {
        v32 = *(v9 + 56);
      }

      else
      {
        v32 = 1;
      }

      LOBYTE(v131) = 0;
      v132 = 0;
      v33 = *(v9 + 72);
      if (v33 == 1)
      {
        v34 = *(v9 + 64);
        if (v34)
        {
          atomic_fetch_add_explicit(v34, 2u, memory_order_relaxed);
          v16 = v133;
        }

        v131 = v34;
        v132 = 1;
      }

      ++*this;
      v133 = 0;
      v35 = WTF::fastMalloc(0x30);
      *v35 = &unk_1F10EB5D8;
      v35[1] = this;
      v35[2] = this;
      v35[3] = v13;
      v35[4] = v10;
      v35[5] = v16;
      v130 = v35;
      if ((v31 & 1) == 0)
      {
        LOBYTE(v134) = 0;
        v137 = 0;
        v36 = v29;
LABEL_76:
        WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)>::operator()(&v130, v36, 1u, &v134);
        if (v137 == 1 && v136 == 1)
        {
          v50 = v135;
          v135 = 0;
          if (v50)
          {
            if (atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v50, v14);
            }
          }
        }

        goto LABEL_119;
      }

      if (v32 != 122)
      {
        if (v32 == 121)
        {
          LOBYTE(v134) = 0;
          v137 = 0;
          v36 = ((v30 & 0xFFFFFFFF00000000) + v29) & 0xFFFFFFFF00000000 | (v30 + v29);
        }

        else
        {
          if (v32 != 1)
          {
            goto LABEL_119;
          }

          LOBYTE(v134) = 0;
          v137 = 0;
          v36 = v30;
        }

        goto LABEL_76;
      }

      v66 = *(*(this + 1) + 8);
      if (v66)
      {
        v67 = v35;
        v68 = *(this + 2);
        CFRetain(*(v66 - 8));
        if (v33)
        {
          v71 = this + 24;
          v69 = *(this + 3);
          v70 = *(v71 + 1);
          v130 = 0;
          v72 = WTF::fastMalloc(0x18);
          *v72 = &unk_1F10EB588;
          *(v72 + 1) = v30;
          *(v72 + 2) = v67;
          v134 = v72;
          (*(*v68 + 32))(v68, v66 - 16, v69, v70, &v131, &v134);
          v73 = v134;
          v134 = 0;
          if (v73)
          {
            (*(*v73 + 8))(v73);
          }

          CFRelease(*(v66 - 8));
LABEL_119:
          v74 = v130;
          v130 = 0;
          if (v74)
          {
            (*(*v74 + 8))(v74);
          }

          if (v132 != 1)
          {
            goto LABEL_228;
          }

          v75 = v131;
          v131 = 0;
          if (!v75)
          {
            goto LABEL_228;
          }

LABEL_163:
          if (atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v75, v14);
          }

          goto LABEL_228;
        }

        std::__throw_bad_optional_access[abi:sn200100]();
LABEL_236:
        __break(0xC471u);
        JUMPOUT(0x19D8E1634);
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19D8E0F28);
  }

  if (!v18)
  {
LABEL_160:
    LOBYTE(v134) = 0;
    v137 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(&v133, &v134);
    if (v137 != 1)
    {
      goto LABEL_228;
    }

    if (v136 != 1)
    {
      goto LABEL_228;
    }

    v75 = v135;
    v135 = 0;
    if (!v75)
    {
      goto LABEL_228;
    }

    goto LABEL_163;
  }

  if (v18 != 1)
  {
LABEL_107:
    v133 = 0;
LABEL_230:
    v17[1](v16);
    goto LABEL_231;
  }

  v19 = *v13;
  if (*v13)
  {
    LODWORD(v19) = *(v19 - 12);
  }

  v20 = *v10;
  if (*v10)
  {
    LODWORD(v20) = *(v20 - 12);
  }

  if (v19 != v20)
  {
    goto LABEL_50;
  }

  v21 = *(v125 + 16);
  if (!v21)
  {
LABEL_111:
    v63 = *(v125 + 32);
    v64 = *(v9 + 32);
    if (v63)
    {
      v65 = *(v63 - 3);
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v76 = *(v64 - 12);
    }

    else
    {
      v76 = 0;
    }

    if (v65 != v76)
    {
      goto LABEL_165;
    }

    if (v63)
    {
      v77 = &v63[2 * *(v63 - 1)];
    }

    else
    {
      v77 = 0;
    }

    if (v64)
    {
      v78 = v64 + 8 * *(v64 - 4);
    }

    else
    {
      v78 = 0;
    }

    if (v63)
    {
      v79 = *(v63 - 1);
      v80 = &v63[2 * v79];
      if (*(v63 - 3))
      {
        if (v79)
        {
          v81 = 8 * v79;
          v82 = *(v125 + 32);
          while (*v82 > 2147483645)
          {
            v82 += 2;
            v81 -= 8;
            if (!v81)
            {
              v82 = v80;
              break;
            }
          }
        }

        else
        {
          v82 = *(v125 + 32);
        }

LABEL_144:
        if (v82 != v77)
        {
          while (1)
          {
            if (v64)
            {
              v83 = *v82;
              if (*v82 == 2147483646)
              {
                __break(0xC471u);
                JUMPOUT(0x19D8E175CLL);
              }

              if (v83 == 0x7FFFFFFF)
              {
                __break(0xC471u);
                JUMPOUT(0x19D8E177CLL);
              }

              v14 = *(v64 - 8);
              v84 = 9 * ((v83 + ~(v83 << 15)) ^ ((v83 + ~(v83 << 15)) >> 10));
              v85 = (v84 ^ (v84 >> 6)) + ~((v84 ^ (v84 >> 6)) << 11);
              v86 = v14 & (v85 ^ HIWORD(v85));
              v87 = *(v64 + 8 * v86);
              if (v87 == v83)
              {
LABEL_152:
                v89 = v64 + 8 * v86;
              }

              else
              {
                v88 = 1;
                while (v87 != 0x7FFFFFFF)
                {
                  v86 = (v86 + v88) & v14;
                  v87 = *(v64 + 8 * v86);
                  ++v88;
                  if (v87 == v83)
                  {
                    goto LABEL_152;
                  }
                }

                v89 = v64 + 8 * *(v64 - 4);
              }
            }

            else
            {
              v89 = 0;
            }

            if (v78 == v89 || v82[1] != *(v89 + 4))
            {
              break;
            }

            do
            {
              v82 += 2;
            }

            while (v82 != v80 && *v82 > 2147483645);
            if (v82 == v77)
            {
              goto LABEL_160;
            }
          }

LABEL_165:
          if (v64)
          {
            v90 = *(v64 - 4);
            v91 = (v64 + 8 * v90);
            if (*(v64 - 12))
            {
              if (!v90)
              {
                v94 = 0;
                v93 = *(v9 + 32);
                goto LABEL_178;
              }

              v92 = 8 * v90;
              v93 = *(v9 + 32);
              while (*v93 > 2147483645)
              {
                v93 += 2;
                v92 -= 8;
                if (!v92)
                {
                  v93 = v91;
                  break;
                }
              }

LABEL_174:
              if (!v64)
              {
                v95 = 0;
                goto LABEL_179;
              }

              v94 = *(v64 - 4);
LABEL_178:
              v95 = (v64 + 8 * v94);
LABEL_179:
              if (v93 != v95)
              {
                v96 = 0;
                while (1)
                {
                  v97 = *(v125 + 32);
                  if (v97)
                  {
                    v98 = *v93;
                    if (*v93 == 2147483646)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x19D8E169CLL);
                    }

                    if (v98 == 0x7FFFFFFF)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x19D8E16BCLL);
                    }

                    v99 = *(v97 - 8);
                    v100 = 9 * ((v98 + ~(v98 << 15)) ^ ((v98 + ~(v98 << 15)) >> 10));
                    v101 = (v100 ^ (v100 >> 6)) + ~((v100 ^ (v100 >> 6)) << 11);
                    v102 = v99 & (v101 ^ HIWORD(v101));
                    v103 = *(v97 + 8 * v102);
                    if (v103 == v98)
                    {
                      goto LABEL_193;
                    }

                    v104 = 1;
                    while (v103 != 0x7FFFFFFF)
                    {
                      v102 = (v102 + v104) & v99;
                      v103 = *(v97 + 8 * v102);
                      ++v104;
                      if (v103 == v98)
                      {
                        goto LABEL_193;
                      }
                    }
                  }

                  if (v96)
                  {
                    v96 = 1;
                  }

                  else
                  {
                    v105 = *(*(this + 1) + 8);
                    if (!v105)
                    {
                      __break(0xC471u);
                      JUMPOUT(0x19D8E171CLL);
                    }

                    v106 = *(this + 2);
                    CFRetain(*(v105 - 8));
                    LODWORD(v134) = v93[1];
                    LOBYTE(v135) = 0;
                    (*(*v106 + 24))(v106, v105 - 16, 109, &v134, &v133);
                    mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v134, v107);
                    CFRelease(*(v105 - 8));
                    v96 = 1;
                  }

                  do
                  {
LABEL_193:
                    v93 += 2;
                  }

                  while (v93 != v91 && *v93 > 2147483645);
                  if (v93 == v95)
                  {
                    v63 = *(v125 + 32);
                    goto LABEL_198;
                  }
                }
              }

              v96 = 0;
LABEL_198:
              if (v63)
              {
                v108 = *(v63 - 1);
                v109 = &v63[2 * v108];
                if (*(v63 - 3))
                {
                  if (!v108)
                  {
                    v112 = 0;
                    v111 = v63;
                    goto LABEL_211;
                  }

                  v110 = 8 * v108;
                  v111 = v63;
                  while (*v111 > 2147483645)
                  {
                    v111 += 2;
                    v110 -= 8;
                    if (!v110)
                    {
                      v111 = v109;
                      break;
                    }
                  }

LABEL_207:
                  if (!v63)
                  {
                    v113 = 0;
                    goto LABEL_212;
                  }

                  v112 = *(v63 - 1);
LABEL_211:
                  v113 = &v63[2 * v112];
LABEL_212:
                  if (v111 == v113)
                  {
                    goto LABEL_228;
                  }

                  while (1)
                  {
                    v114 = *(v9 + 32);
                    if (v114)
                    {
                      v115 = *v111;
                      if (*v111 == 2147483646)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x19D8E16DCLL);
                      }

                      if (v115 == 0x7FFFFFFF)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x19D8E16FCLL);
                      }

                      v116 = *(v114 - 8);
                      v117 = 9 * ((v115 + ~(v115 << 15)) ^ ((v115 + ~(v115 << 15)) >> 10));
                      v118 = (v117 ^ (v117 >> 6)) + ~((v117 ^ (v117 >> 6)) << 11);
                      v119 = v116 & (v118 ^ HIWORD(v118));
                      v120 = *(v114 + 8 * v119);
                      if (v120 == v115)
                      {
                        goto LABEL_225;
                      }

                      v121 = 1;
                      while (v120 != 0x7FFFFFFF)
                      {
                        v119 = (v119 + v121) & v116;
                        v120 = *(v114 + 8 * v119);
                        ++v121;
                        if (v120 == v115)
                        {
                          goto LABEL_225;
                        }
                      }
                    }

                    if (v96)
                    {
                      v96 = 1;
                    }

                    else
                    {
                      v122 = *(*(this + 1) + 8);
                      if (!v122)
                      {
                        __break(0xC471u);
                        JUMPOUT(0x19D8E173CLL);
                      }

                      v123 = *(this + 2);
                      CFRetain(*(v122 - 8));
                      LODWORD(v134) = v111[1];
                      LOBYTE(v135) = 0;
                      (*(*v123 + 24))(v123, v122 - 16, 110, &v134, &v133);
                      mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v134, v124);
                      CFRelease(*(v122 - 8));
                      v96 = 1;
                    }

                    do
                    {
LABEL_225:
                      v111 += 2;
                    }

                    while (v111 != v109 && *v111 > 2147483645);
                    if (v111 == v113)
                    {
                      goto LABEL_228;
                    }
                  }
                }
              }

              else
              {
                v109 = 0;
                v108 = 0;
              }

              v111 = v109;
              v109 = &v63[2 * v108];
              goto LABEL_207;
            }
          }

          else
          {
            v91 = 0;
            v90 = 0;
          }

          v93 = v91;
          v91 = (v64 + 8 * v90);
          goto LABEL_174;
        }

        goto LABEL_160;
      }
    }

    else
    {
      v80 = 0;
      v79 = 0;
    }

    v82 = v80;
    v80 = &v63[2 * v79];
    goto LABEL_144;
  }

  while (1)
  {
    v22 = *v10;
    if (!*v10)
    {
      break;
    }

    v23 = *(v22 - 8);
    v24 = *(*v21 + 16);
    if (v24 < 0x100)
    {
      v25 = WTF::StringImpl::hashSlowCase(*v21);
    }

    else
    {
      v25 = v24 >> 8;
    }

    for (i = 0; ; v25 = i + v27)
    {
      v27 = v25 & v23;
      v28 = *(v22 + 8 * (v25 & v23));
      if (v28 != -1)
      {
        if (!v28)
        {
          goto LABEL_50;
        }

        if (WTF::equal(*v28, *v21, v15))
        {
          break;
        }
      }

      ++i;
    }

    v21 = *(v21 + 16);
    if (!v21)
    {
      goto LABEL_111;
    }
  }

LABEL_50:
  v37 = *(v9 + 16);
  if (v37)
  {
    v38 = 0;
    while (1)
    {
      v39 = *v37;
      if (*v37)
      {
        atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
      }

      v40 = *v13;
      if (*v13)
      {
        v41 = *(v40 - 8);
        v42 = v39[4];
        if (v42 < 0x100)
        {
          v43 = WTF::StringImpl::hashSlowCase(v39);
        }

        else
        {
          v43 = v42 >> 8;
        }

        for (j = 0; ; v43 = j + v45)
        {
          v45 = v43 & v41;
          v46 = *(v40 + 8 * (v43 & v41));
          if (v46 != -1)
          {
            if (!v46)
            {
              goto LABEL_62;
            }

            if (WTF::equal(*v46, v39, v15))
            {
              break;
            }
          }

          ++j;
        }
      }

      else
      {
LABEL_62:
        if ((v38 & 1) == 0)
        {
          v47 = *(*(this + 1) + 8);
          if (!v47)
          {
            __break(0xC471u);
            JUMPOUT(0x19D8E1654);
          }

          v48 = *(this + 2);
          CFRetain(*(v47 - 8));
          if (v39)
          {
            atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
          }

          v134 = v39;
          v38 = 1;
          LOBYTE(v135) = 1;
          (*(*v48 + 24))(v48, v47 - 16, 109, &v134, &v133);
          mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v134, v49);
          CFRelease(*(v47 - 8));
          if (!v39)
          {
            goto LABEL_72;
          }

LABEL_70:
          if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v14);
          }

          goto LABEL_72;
        }

        v38 = 1;
      }

      if (v39)
      {
        goto LABEL_70;
      }

LABEL_72:
      v37 = *(v37 + 16);
      if (!v37)
      {
        goto LABEL_82;
      }
    }
  }

  v38 = 0;
LABEL_82:
  for (k = *(v125 + 16); k; k = *(k + 16))
  {
    v52 = *k;
    if (*k)
    {
      atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
    }

    v53 = *v10;
    if (*v10)
    {
      v54 = *(v53 - 8);
      v55 = v52[4];
      if (v55 < 0x100)
      {
        v56 = WTF::StringImpl::hashSlowCase(v52);
      }

      else
      {
        v56 = v55 >> 8;
      }

      for (m = 0; ; v56 = m + v58)
      {
        v58 = v56 & v54;
        v59 = *(v53 + 8 * (v56 & v54));
        if (v59 != -1)
        {
          if (!v59)
          {
            goto LABEL_93;
          }

          if (WTF::equal(*v59, v52, v15))
          {
            break;
          }
        }

        ++m;
      }
    }

    else
    {
LABEL_93:
      if ((v38 & 1) == 0)
      {
        v60 = *(*(this + 1) + 8);
        if (!v60)
        {
          __break(0xC471u);
          JUMPOUT(0x19D8E1674);
        }

        v61 = *(this + 2);
        CFRetain(*(v60 - 8));
        if (v52)
        {
          atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
        }

        v134 = v52;
        v38 = 1;
        LOBYTE(v135) = 1;
        (*(*v61 + 24))(v61, v60 - 16, 110, &v134, &v133);
        mpark::detail::move_constructor<mpark::detail::traits<BOOL,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(&v134, v62);
        CFRelease(*(v60 - 8));
        if (!v52)
        {
          continue;
        }

LABEL_101:
        if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v52, v14);
        }

        continue;
      }

      v38 = 1;
    }

    if (v52)
    {
      goto LABEL_101;
    }
  }

LABEL_228:
  v16 = v133;
  v133 = 0;
  if (v16)
  {
    v17 = *v16;
    goto LABEL_230;
  }

LABEL_231:

  return WTF::RefCounted<WebKit::SimulatedInputSource>::deref(v125, v14);
}

WTF::StringImpl *WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)>::operator()(uint64_t *a1, uint64_t a2, unsigned int a3, int *a4)
{
  v4 = *a1;
  LOBYTE(v8) = 0;
  v11 = 0;
  if (*(a4 + 24) == 1)
  {
    v8 = *a4;
    LOBYTE(v9) = 0;
    v10 = 0;
    if (*(a4 + 16) == 1)
    {
      v5 = *(a4 + 1);
      *(a4 + 1) = 0;
      v9 = v5;
      v10 = 1;
    }

    v11 = 1;
  }

  result = (*(*v4 + 16))(v4, a2, a3, &v8);
  if (v11 == 1 && v10 == 1)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

WTF::StringImpl *WebKit::SimulatedInputDispatcher::run(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (*(a1 + 40))
  {
    v53 = 5;
    LOBYTE(v54) = 0;
    v55 = 0;
    v56 = 1;
    result = WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(a6, &v53);
    if (v56 == 1 && v55 == 1)
    {
      result = v54;
      v54 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  else
  {
    *(a1 + 24) = a2;
    *(a1 + 32) = a3;
    v11 = *a6;
    *a6 = 0;
    v12 = *(a1 + 40);
    *(a1 + 40) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1 + 104, *(a4 + 12) + 1);
    v13 = *a5;
    result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(*a5);
    v17 = result;
    v18 = v14;
    if (v13)
    {
      v19 = (v13 + 16 * *(v13 - 4));
      v57 = 0uLL;
      v20 = *(v13 - 12);
      if (v20)
      {
        if (v20 >= 0x2222223)
        {
          __break(0xC471u);
          return result;
        }

        v21 = 120 * v20;
        v13 = WTF::fastMalloc((120 * v20));
        v52 = v21 / 0x78;
      }

      else
      {
        v52 = 0;
        v13 = 0;
      }
    }

    else
    {
      v52 = 0;
      v19 = 0;
      v57 = 0uLL;
    }

    if (v17 == v19)
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v58 = *(v17 + 1);
        v60 = 0;
        v61 = 0;
        v59 = 0;
        for (i = *(v58 + 16); i; i = *(i + 16))
        {
          WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::add(&v59, i, v15, v69);
        }

        WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::HashTable(&v62, (v58 + 32));
        v25 = *(v58 + 40);
        *&v63[13] = *(v58 + 53);
        *v63 = v25;
        LOBYTE(v64) = 0;
        v65 = 0;
        v26 = *(v58 + 72);
        if (v26 == 1)
        {
          v27 = *(v58 + 64);
          if (v27)
          {
            atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
          }

          v64 = v27;
          v65 = 1;
        }

        v28 = *(v58 + 80);
        v29 = *(v58 + 96);
        v68 = *(v58 + 112);
        v66 = v28;
        v67 = v29;
        v30 = v13 + 120 * v22;
        *v30 = v58;
        v31 = v59;
        v59 = 0;
        *(v30 + 8) = v31;
        v32 = v60;
        v60 = 0;
        *(v30 + 16) = v32;
        v33 = v61;
        v61 = 0;
        *(v30 + 24) = v33;
        v34 = v62;
        v62 = 0;
        *(v30 + 32) = v34;
        v35 = *v63;
        *(v30 + 53) = *&v63[13];
        *(v30 + 40) = v35;
        *(v30 + 64) = 0;
        *(v30 + 72) = 0;
        if (v26)
        {
          v36 = v64;
          v64 = 0;
          *(v30 + 64) = v36;
          *(v30 + 72) = 1;
        }

        v37 = v66;
        v38 = v67;
        *(v30 + 112) = v68;
        *(v30 + 80) = v37;
        *(v30 + 96) = v38;
        WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(&v59, v24);
        if (v59)
        {
          WTF::fastFree((v59 - 16), v14);
        }

        do
        {
          v17 = (v17 + 16);
        }

        while (v17 != v18 && (*v17 + 1) <= 1);
        ++v22;
      }

      while (v17 != v19);
    }

    *&v16 = 0;
    v57 = v16;
    v58 = v13;
    v59 = __PAIR64__(v22, v52);
    WTF::Vector<std::pair<WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v14);
    v40 = *(a1 + 116);
    if (v40 == *(a1 + 112))
    {
      WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::SimulatedInputKeyFrame>(a1 + 104, &v58);
    }

    else
    {
      v41 = *(a1 + 104) + 16 * v40;
      *(v41 + 8) = 0;
      v58 = 0;
      *v41 = v13;
      LODWORD(v59) = 0;
      *(v41 + 8) = v52;
      v42 = HIDWORD(v59);
      HIDWORD(v59) = 0;
      *(v41 + 12) = v42;
      ++*(a1 + 116);
    }

    WTF::Vector<std::pair<WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v39);
    v43 = *(a4 + 12);
    v44 = *(a1 + 112);
    v45 = v43 + *(a1 + 116);
    if (v45 > v44)
    {
      v46 = v44 + (v44 >> 1);
      if (v46 <= v44 + 1)
      {
        v46 = v44 + 1;
      }

      if (v46 <= v45)
      {
        v46 = v45;
      }

      if (v46 <= 0x10)
      {
        v47 = 16;
      }

      else
      {
        v47 = v46;
      }

      WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1 + 104, v47);
      v43 = *(a4 + 12);
    }

    if (v43)
    {
      v48 = *a4;
      v49 = *(a1 + 116);
      v50 = 16 * v43;
      do
      {
        v51 = (*(a1 + 104) + 16 * v49);
        *v51 = 0;
        v51[1] = 0;
        WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v51, v48);
        v49 = *(a1 + 116) + 1;
        *(a1 + 116) = v49;
        v48 += 4;
        v50 -= 16;
      }

      while (v50);
    }

    return WebKit::SimulatedInputDispatcher::transitionToNextKeyFrame(a1);
  }

  return result;
}

WebKit::SimulatedInputDispatcher *WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(WebKit::SimulatedInputDispatcher *result, WTF::StringImpl *a2)
{
  if (*result == 1)
  {
    WebKit::SimulatedInputDispatcher::~SimulatedInputDispatcher(result, a2);

    return WTF::fastFree(v3, v4);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::RefCounted<WebKit::SimulatedInputSource>::deref(uint64_t result, WTF::StringImpl *a2)
{
  v2 = result;
  if (*result == 1)
  {
    if (*(result + 72) == 1)
    {
      v3 = *(result + 64);
      *(v2 + 8) = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, a2);
        }
      }
    }

    v4 = *(v2 + 4);
    if (v4)
    {
      WTF::fastFree((v4 - 16), a2);
    }

    WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(v2 + 8, a2);
    v6 = *(v2 + 1);
    if (v6)
    {
      WTF::fastFree((v6 - 16), v5);
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, v5);
    }

    else
    {
      result = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::Vector<std::pair<WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = 120 * v3;
    v5 = *a1 + 64;
    do
    {
      if (*(v5 + 8) == 1)
      {
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          if (atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v6, a2);
          }
        }
      }

      v7 = *(v5 - 32);
      if (v7)
      {
        WTF::fastFree((v7 - 16), a2);
      }

      WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(v5 - 56, a2);
      v8 = *(v5 - 56);
      if (v8)
      {
        WTF::fastFree((v8 - 16), a2);
      }

      v5 += 120;
      v4 -= 120;
    }

    while (v4);
  }

  v9 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v9, a2);
  }

  return a1;
}

void *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = *(result - 1);
  v2 = &result[2 * v1];
  if (!*(result - 3))
  {
    return &result[2 * v1];
  }

  if (v1)
  {
    v3 = 16 * v1;
    while ((*result + 1) <= 1)
    {
      result += 2;
      v3 -= 16;
      if (!v3)
      {
        return v2;
      }
    }
  }

  return result;
}

uint64_t WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::add@<X0>(uint64_t *a1@<X0>, WTF::StringImpl **a2@<X1>, const WTF::StringImpl *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (*a1 || (WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::expand(a1, 0), (v7 = *a1) != 0))
  {
    v8 = *(v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*a2 + 4);
  if (v9 < 0x100)
  {
    v10 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v10 = v9 >> 8;
  }

  v11 = 0;
  for (i = 1; ; ++i)
  {
    v13 = v10 & v8;
    v14 = (v7 + 8 * (v10 & v8));
    v15 = *v14;
    if (*v14 == -1)
    {
      v11 = (v7 + 8 * v13);
      goto LABEL_12;
    }

    if (!v15)
    {
      break;
    }

    result = WTF::equal(*v15, *a2, a3);
    if (result)
    {
      v20 = 0;
      goto LABEL_27;
    }

LABEL_12:
    v10 = i + v13;
  }

  if (v11)
  {
    *v11 = 0;
    --*(*a1 - 16);
    v14 = v11;
  }

  result = WTF::fastMalloc(0x18);
  v17 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = v17;
  *v14 = result;
  v18 = *a1;
  if (*a1)
  {
    v19 = *(v18 - 12) + 1;
  }

  else
  {
    v19 = 1;
  }

  *(v18 - 12) = v19;
  v21 = (*(v18 - 16) + v19);
  v22 = *(v18 - 4);
  if (v22 > 0x400)
  {
    if (v22 <= 2 * v21)
    {
LABEL_22:
      v14 = WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::expand(a1, v14);
      result = *v14;
    }
  }

  else if (3 * v22 <= 4 * v21)
  {
    goto LABEL_22;
  }

  v23 = a1[2];
  *(result + 8) = v23;
  *(result + 16) = 0;
  if (v23)
  {
    v24 = (v23 + 16);
  }

  else
  {
    v24 = a1 + 1;
  }

  *v24 = result;
  a1[2] = result;
  v20 = 1;
LABEL_27:
  v25 = *v14;
  *a4 = a1;
  *(a4 + 8) = v25;
  *(a4 + 16) = v20;
  return result;
}

void *WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::expand(uint64_t *a1, WTF::StringImpl ***a2)
{
  v3 = *a1;
  if (*a1 && (v4 = *(v3 - 4)) != 0)
  {
    v5 = v4 << (6 * *(v3 - 12) >= (2 * v4));
  }

  else
  {
    v5 = 8;
  }

  return WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

void *WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, WTF::StringImpl ***a3)
{
  v6 = *a1;
  if (*a1)
  {
    LODWORD(v7) = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((8 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  v11 = 0;
  if (v7)
  {
    v7 = v7;
    v12 = v6;
    do
    {
      if (*v12 + 1 >= 2)
      {
        v13 = WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::lookupForReinsert(a1, v12);
        *v13 = *v12;
        if (v12 == a3)
        {
          v11 = v13;
        }
      }

      ++v12;
      --v7;
    }

    while (v7);
  }

  else
  {
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v11;
}

uint64_t WTF::HashTable<WTF::ListHashSetNode<WTF::String> *,WTF::ListHashSetNode<WTF::String> *,WTF::IdentityExtractor,WTF::ListHashSetNodeHashFunctions<WTF::DefaultHash<WTF::String>>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::HashTraits<WTF::ListHashSetNode<WTF::String> *>,WTF::FastMalloc>::lookupForReinsert(uint64_t *a1, WTF::StringImpl ***a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = **a2;
  v5 = *(v4 + 4);
  if (v5 < 0x100)
  {
    v6 = WTF::StringImpl::hashSlowCase(v4);
  }

  else
  {
    v6 = v5 >> 8;
  }

  v7 = 0;
  do
  {
    v8 = v6 & v3;
    v6 = ++v7 + v8;
  }

  while (*(v2 + 8 * v8));
  return v2 + 8 * v8;
}

uint64_t *WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::HashTable(uint64_t *a1, int **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (!*a2)
  {
    return a1;
  }

  v4 = *(v3 - 3);
  if (!v4)
  {
    return a1;
  }

  v6 = WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(*(v3 - 3));
  v7 = WTF::fastMalloc((8 * v6 + 16));
  if (v6)
  {
    v8 = v6;
    v9 = v7 + 4;
    do
    {
      *v9++ = 0x7FFFFFFFLL;
      --v8;
    }

    while (v8);
  }

  *a1 = (v7 + 4);
  v7[2] = v6 - 1;
  v7[3] = v6;
  *v7 = 0;
  v7[1] = v4;
  v10 = *a2;
  if (!*a2)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v11 = *(v10 - 1);
  v12 = &v10[2 * v11];
  if (!*(v10 - 3))
  {
LABEL_14:
    v14 = v12;
    v12 = &v10[2 * v11];
    goto LABEL_15;
  }

  if (!v11)
  {
    v15 = 0;
    v14 = *a2;
    goto LABEL_18;
  }

  v13 = 8 * v11;
  v14 = *a2;
  while (*v14 > 2147483645)
  {
    v14 += 2;
    v13 -= 8;
    if (!v13)
    {
      v14 = v12;
      break;
    }
  }

LABEL_15:
  if (!v10)
  {
    goto LABEL_19;
  }

  v15 = *(v10 - 1);
LABEL_18:
  v10 += 2 * v15;
LABEL_19:
  while (v14 != v10)
  {
    v16 = *a1;
    if (*a1)
    {
      v17 = *(v16 - 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = 0;
    v19 = *v14 + ~(*v14 << 15);
    v20 = (9 * (v19 ^ (v19 >> 10))) ^ ((9 * (v19 ^ (v19 >> 10))) >> 6);
    v21 = (v20 + ~(v20 << 11)) ^ ((v20 + ~(v20 << 11)) >> 16);
    do
    {
      v22 = v21 & v17;
      v23 = *(v16 + 8 * (v21 & v17));
      v21 = ++v18 + (v21 & v17);
    }

    while (v23 != 0x7FFFFFFF);
    v24 = *v14;
    v14 += 2;
    *(v16 + 8 * v22) = v24;
    while (v14 != v12 && *v14 > 2147483645)
    {
      v14 += 2;
    }
  }

  return a1;
}

uint64_t WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::computeBestTableSize(uint64_t result)
{
  if (result > 1)
  {
    v3 = __clz(result - 1);
    if (!v3)
    {
      __break(1u);
      return result;
    }

    v2 = (1 << -v3);
    v1 = result;
    if (result > 0x400)
    {
      if (v2 > 2 * result)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v1 = result;
    v2 = 1;
  }

  if (3 * v2 <= 4 * v1)
  {
LABEL_6:
    LODWORD(v2) = 2 * v2;
  }

LABEL_7:
  if (v2 > 0x400)
  {
    v4 = 0.416666667;
  }

  else
  {
    v4 = 0.604166667;
  }

  if (v2 * v4 <= result)
  {
    LODWORD(v2) = 2 * v2;
  }

  if (v2 <= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

WebKit::SimulatedInputDispatcher *WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::SimulatedInputDispatcher>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::SimulatedInputDispatcher *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++*v1;
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))();
  }

  else
  {
    result = v2(v4);
    if (!v1)
    {
      return result;
    }
  }

  return WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v1, v6);
}

uint64_t WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 16 * v3;
    do
    {
      v4 = WTF::Vector<std::pair<WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v4, a2) + 16;
      v5 -= 16;
    }

    while (v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v6, a2);
  }

  return a1;
}

WTF::StringImpl *WTF::Function<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(uint64_t *a1, int *a2)
{
  v2 = *a1;
  LOBYTE(v6) = 0;
  v9 = 0;
  if (*(a2 + 24) == 1)
  {
    v6 = *a2;
    LOBYTE(v7) = 0;
    v8 = 0;
    if (*(a2 + 16) == 1)
    {
      v3 = *(a2 + 1);
      *(a2 + 1) = 0;
      v7 = v3;
      v8 = 1;
    }

    v9 = 1;
  }

  result = (*(*v2 + 16))(v2, &v6);
  if (v9 == 1 && v8 == 1)
  {
    result = v7;
    v7 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionToNextKeyFrame(void)::$_0,void,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EB538;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionToNextKeyFrame(void)::$_0,void,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EB538;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionToNextKeyFrame(void)::$_0,void,std::optional<WebKit::AutomationCommandError>>::call(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) != 1)
  {
    return WebKit::SimulatedInputDispatcher::transitionToNextKeyFrame(*(a1 + 8));
  }

  v2 = *a2;
  if (*(a2 + 16) != 1)
  {
    v3 = *(a1 + 8);
    v7 = *a2;
    LOBYTE(v8) = 0;
    v9 = 0;
LABEL_4:
    v10 = 1;
    return WebKit::SimulatedInputDispatcher::finishDispatching(v3, &v7);
  }

  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v3 = *(a1 + 8);
  v7 = v2;
  if (!v5)
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_4;
  }

  atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  v8 = v5;
  v9 = 1;
  v10 = 1;
  result = WebKit::SimulatedInputDispatcher::finishDispatching(v3, &v7);
  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v5, v6);
  }

  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v5, v6);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionToNextInputSourceState(void)::$_0,void,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EB560;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionToNextInputSourceState(void)::$_0,void,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EB560;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionToNextInputSourceState(void)::$_0,void,std::optional<WebKit::AutomationCommandError>>::call(uint64_t a1, int *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    v3 = *(a2 + 16);
    if (v3 == 1)
    {
      v4 = *(a2 + 1);
      *(a2 + 1) = 0;
    }

    else
    {
      v4 = 0;
    }

    v7 = *(a1 + 8);
    v14 = *(v7 + 48);
    *(v7 + 48) = 0;
    v10 = v2;
    LOBYTE(v11) = 0;
    v12 = 0;
    if (v3)
    {
      if (v4)
      {
        atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
      }

      v11 = v4;
      v12 = 1;
    }

    v13 = 1;
    WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(&v14, &v10);
    if (v13 == 1 && v12 == 1)
    {
      v9 = v11;
      v11 = 0;
      if (v9)
      {
        if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v8);
        }
      }
    }

    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v3 && v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v4, v8);
    }
  }

  else
  {
    v5 = *(a1 + 8);
    ++*(v5 + 31);
    return WebKit::SimulatedInputDispatcher::transitionToNextInputSourceState(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::resolveLocation(WebCore::IntPoint const&,std::optional<WebCore::IntPoint>,Inspector::Protocol::Automation::MouseMoveOrigin,std::optional<WTF::String>,WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)> &&)::$_0,void,std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10EB588;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::resolveLocation(WebCore::IntPoint const&,std::optional<WebCore::IntPoint>,Inspector::Protocol::Automation::MouseMoveOrigin,std::optional<WTF::String>,WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)> &&)::$_0,void,std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10EB588;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::resolveLocation(WebCore::IntPoint const&,std::optional<WebCore::IntPoint>,Inspector::Protocol::Automation::MouseMoveOrigin,std::optional<WTF::String>,WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)> &&)::$_0,void,std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>>::call(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 24) != 1)
  {
    if (a3)
    {
      v7 = *(a1 + 12) + HIDWORD(a2);
      *(a1 + 8) += a2;
      *(a1 + 12) = v7;
      v8 = *(a1 + 8);
      LOBYTE(v11) = 0;
      v14 = 0;
      result = WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)>::operator()((a1 + 16), v8, 1u, &v11);
      if (v14 != 1)
      {
        return result;
      }

      if (v13 != 1)
      {
        return result;
      }

      result = v12;
      v12 = 0;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v15 = 19;
      LOBYTE(v16) = 0;
      v17 = 0;
      v18 = 1;
      result = WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)>::operator()((a1 + 16), 0, 0, &v15);
      if (v18 != 1)
      {
        return result;
      }

      if (v17 != 1)
      {
        return result;
      }

      result = v16;
      v16 = 0;
      if (!result)
      {
        return result;
      }
    }

    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      return result;
    }

    return WTF::StringImpl::destroy(result, v10);
  }

  v4 = *a4;
  v5 = *(a4 + 16);
  if (v5)
  {
    v6 = *(a4 + 8);
    *(a4 + 8) = 0;
    v19 = v4;
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v20 = v6;
    v21 = 1;
  }

  else
  {
    v6 = 0;
    v19 = *a4;
    LOBYTE(v20) = 0;
    v21 = 0;
  }

  v22 = 1;
  result = WTF::Function<void ()(std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>)>::operator()((a1 + 16), 0, 0, &v19);
  if (v22 == 1 && v21 == 1)
  {
    result = v20;
    v20 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v10);
      }
    }
  }

  if (v6 && v5 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = v6;
    return WTF::StringImpl::destroy(result, v10);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionInputSourceToState(WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState &,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_1,void,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EB5B0;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::SimulatedInputSource>::deref(v4, a2);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionInputSourceToState(WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState &,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_1,void,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EB5B0;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::SimulatedInputSource>::deref(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionInputSourceToState(WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState &,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_1,void,std::optional<WebKit::AutomationCommandError>>::call(void *a1, _BYTE *a2, const WTF::StringImpl *a3)
{
  if (a2[24] == 1)
  {
    v4 = *a2;
    v5 = a2[16];
    if (v5)
    {
      v6 = *(a2 + 1);
      *(a2 + 1) = 0;
      v24 = v4;
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      v25 = v6;
      v26 = 1;
    }

    else
    {
      v6 = 0;
      v24 = *a2;
      LOBYTE(v25) = 0;
      v26 = 0;
    }

    v27 = 1;
    result = WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(a1 + 5, &v24);
    if (v27 == 1 && v26 == 1)
    {
      result = v25;
      v25 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v13);
        }
      }
    }

    if (v6 && v5 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = v6;
      return WTF::StringImpl::destroy(result, v13);
    }
  }

  else
  {
    v7 = a1[3];
    v8 = a1[4];
    v29 = 0;
    v9 = 0uLL;
    v28 = 0u;
    v10 = *(v8 + 8);
    if (v10)
    {
      do
      {
        WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::add(&v28, v10, a3, v30);
        v10 = *(v10 + 16);
      }

      while (v10);
      v9 = v28;
      v11 = v29;
    }

    else
    {
      v11 = 0;
    }

    v14 = *(v7 + 8);
    *(v7 + 8) = v9;
    v28 = v14;
    v15 = *(v7 + 24);
    *(v7 + 24) = v11;
    v29 = v15;
    WTF::ListHashSet<WTF::String,WTF::DefaultHash<WTF::String>>::deleteAllNodes(&v28, a2);
    if (v28)
    {
      WTF::fastFree((v28 - 16), v16);
    }

    WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::operator=((v7 + 32), (v8 + 24));
    v17 = *(v8 + 45);
    *(v7 + 40) = *(v8 + 32);
    *(v7 + 53) = v17;
    std::__optional_storage_base<WTF::String,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WTF::String,false> const&>((v7 + 64), (v8 + 56));
    v18 = *(v8 + 72);
    v19 = *(v8 + 88);
    *(v7 + 112) = *(v8 + 104);
    *(v7 + 80) = v18;
    *(v7 + 96) = v19;
    v20[0] = 0;
    v23 = 0;
    result = WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(a1 + 5, v20);
    if (v23 == 1 && v22 == 1)
    {
      result = v21;
      v21 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v13);
        }
      }
    }
  }

  return result;
}

uint64_t *WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::operator=(uint64_t *a1, int **a2)
{
  WTF::HashTable<Inspector::Protocol::Automation::VirtualKey,WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey>>,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::HashMap<Inspector::Protocol::Automation::VirtualKey,Inspector::Protocol::Automation::VirtualKey,WTF::IntHash<Inspector::Protocol::Automation::VirtualKey>,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<Inspector::Protocol::Automation::VirtualKey>,WTF::FastMalloc>::HashTable(&v6, a2);
  v4 = *a1;
  *a1 = v6;
  v6 = v4;
  if (v4)
  {
    WTF::fastFree((v4 - 16), v3);
  }

  return a1;
}

WTF::StringImpl *std::__optional_destruct_base<WTF::String,false>::reset[abi:sn200100](WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (*(result + 8) == 1)
  {
    v2 = result;
    result = *result;
    *v2 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    *(v2 + 8) = 0;
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionInputSourceToState(WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState &,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_2,void,std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F10EB5D8;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionInputSourceToState(WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState &,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_2,void,std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F10EB5D8;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::RefCounted<WebKit::SimulatedInputDispatcher>::deref(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::SimulatedInputDispatcher::transitionInputSourceToState(WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState &,WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)> &&)::$_2,void,std::optional<WebCore::IntPoint>,std::optional<WebKit::AutomationCommandError>>::call(void *a1, uint64_t a2, char a3, int *a4)
{
  if (*(a4 + 24) != 1)
  {
    if (a3)
    {
      v8 = a1[1];
      v9 = a1[4];
      *(v9 + 72) = a2;
      *(v9 + 80) = a3;
      v10 = a1[3];
      v11 = a1[4];
      if (*(v10 + 36))
      {
        if ((*(v11 + 36) & 1) == 0)
        {
          v12 = *(*(v8 + 8) + 8);
          if (v12)
          {
            v13 = *(v8 + 16);
            CFRetain(*(v12 - 8));
            v14 = a1[4];
            if (*(v14 + 80))
            {
              v15 = v12 - 16;
              v16 = *(*v13 + 16);
              v17 = v14 + 72;
              v18 = a1 + 5;
              v19 = v13;
              v20 = 2;
LABEL_32:
              v26 = 0;
              v27 = 0;
LABEL_54:
              v16(v19, v15, v20, v17, v26, v27, v18);
              CFRelease(*(v12 - 8));
              return;
            }

            goto LABEL_56;
          }

          goto LABEL_59;
        }
      }

      else if (*(v11 + 36))
      {
        v12 = *(*(v8 + 8) + 8);
        if (!v12)
        {
          __break(0xC471u);
          JUMPOUT(0x19D8E33F8);
        }

        v24 = *(v8 + 16);
        CFRetain(*(v12 - 8));
        v25 = a1[4];
        if (*(v25 + 80))
        {
          v15 = v12 - 16;
          v16 = *(*v24 + 16);
          v17 = v25 + 72;
          v18 = a1 + 5;
          v19 = v24;
          v20 = 0;
          goto LABEL_32;
        }

        goto LABEL_56;
      }

      v28 = *(v10 + 80);
      v29 = *(v11 + 80);
      if (v28 != 1 || v29 == 0)
      {
        if (v28 != v29)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v35 = *(v10 + 72);
        v34 = *(v10 + 76);
        v37 = *(v11 + 72);
        v36 = *(v11 + 76);
        if (v35 != v37 || v34 != v36)
        {
LABEL_39:
          v12 = *(*(v8 + 8) + 8);
          if (v12)
          {
            v31 = *(v8 + 16);
            CFRetain(*(v12 - 8));
            v32 = a1[4];
            if (*(v32 + 80))
            {
              v15 = v12 - 16;
              v33 = a1[3];
              if (*(v33 + 104) == 1)
              {
                v26 = *(v33 + 96);
              }

              else
              {
                v26 = 0;
              }

              v16 = *(*v31 + 16);
              v17 = v32 + 72;
              v18 = a1 + 5;
              v19 = v31;
              v20 = 1;
              v27 = 1;
              goto LABEL_54;
            }

LABEL_56:
            std::__throw_bad_optional_access[abi:sn200100]();
          }

LABEL_59:
          __break(0xC471u);
          JUMPOUT(0x19D8E33D8);
        }
      }

      v39[0] = 0;
      v42 = 0;
      WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(a1 + 5, v39);
      if (v42 != 1)
      {
        return;
      }

      if (v41 != 1)
      {
        return;
      }

      v22 = v40;
      v40 = 0;
      if (!v22)
      {
        return;
      }
    }

    else
    {
      v43 = 19;
      LOBYTE(v44) = 0;
      v45 = 0;
      v46 = 1;
      WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(a1 + 5, &v43);
      if (v46 != 1)
      {
        return;
      }

      if (v45 != 1)
      {
        return;
      }

      v22 = v44;
      v44 = 0;
      if (!v22)
      {
        return;
      }
    }

    if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_27;
    }

    return;
  }

  v5 = *a4;
  v6 = *(a4 + 16);
  if (v6)
  {
    v7 = *(a4 + 1);
    *(a4 + 1) = 0;
    v47 = v5;
    if (v7)
    {
      atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    }

    v48 = v7;
    v49 = 1;
  }

  else
  {
    v7 = 0;
    v47 = *a4;
    LOBYTE(v48) = 0;
    v49 = 0;
  }

  v50 = 1;
  WTF::CompletionHandler<void ()(std::optional<WebKit::AutomationCommandError>)>::operator()(a1 + 5, &v47);
  if (v50 == 1 && v49 == 1)
  {
    v23 = v48;
    v48 = 0;
    if (v23)
    {
      if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v23, v21);
      }
    }
  }

  if (v7 && v6 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v22 = v7;
LABEL_27:
    WTF::StringImpl::destroy(v22, v21);
  }
}

uint64_t WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 28)
    {
      __break(0xC471u);
      JUMPOUT(0x19D8E34B0);
    }

    v4 = *a1;
    v5 = (*a1 + 16 * *(a1 + 12));
    v6 = WTF::fastMalloc((16 * a2));
    *(a1 + 8) = v2;
    *a1 = v6;
    WTF::VectorMover<false,WebKit::SimulatedInputKeyFrame>::move(v4, v5, v6);
    if (v4)
    {
      if (*a1 == v4)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
      }

      WTF::fastFree(v4, v7);
    }
  }

  return 1;
}

uint64_t WTF::VectorMover<false,WebKit::SimulatedInputKeyFrame>::move(uint64_t result, _DWORD *a2, void *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(a3, v5);
      result = WTF::Vector<std::pair<WebKit::SimulatedInputSource &,WebKit::SimulatedInputSourceState>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v6);
      a3 += 2;
      v5 += 4;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::SimulatedInputKeyFrame>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = (*a1 + 16 * *(a1 + 12));
  *v4 = 0;
  v4[1] = 0;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(v4, v3);
  ++*(a1 + 12);
  return 1;
}

unint64_t WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 16 * *(a1 + 12) <= a3)
  {
    v10 = *(a1 + 8);
    if (v10 + (v10 >> 1) <= v10 + 1)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = v10 + (v10 >> 1);
    }

    if (v11 <= a2)
    {
      v11 = a2;
    }

    if (v11 <= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = v11;
    }

    WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
  }

  else
  {
    v6 = a3 - v5;
    v7 = *(a1 + 8);
    if (v7 + (v7 >> 1) <= v7 + 1)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + (v7 >> 1);
    }

    if (v8 <= a2)
    {
      v8 = a2;
    }

    if (v8 <= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    WTF::Vector<WebKit::SimulatedInputKeyFrame,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WebKit::get_TCC_kTCCServiceCamera(WebKit *this)
{
  if (qword_1ED641BF8 != -1)
  {
    dispatch_once(&qword_1ED641BF8, &__block_literal_global_4_0);
  }

  return qword_1ED641BF0;
}

uint64_t ___ZN6WebKit25get_TCC_kTCCServiceCameraEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::TCCLibrary(a1);
  result = dlsym(v1, "kTCCServiceCamera");
  if (result)
  {
    qword_1ED641BF0 = *result;
  }

  else
  {
    result = 35;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::get_TCC_kTCCServicePhotos(WebKit *this)
{
  if (qword_1ED641C18 != -1)
  {
    dispatch_once(&qword_1ED641C18, &__block_literal_global_8_2);
  }

  return qword_1ED641C10;
}

uint64_t ___ZN6WebKit25get_TCC_kTCCServicePhotosEv_block_invoke(WebKit *a1)
{
  v1 = WebKit::TCCLibrary(a1);
  result = dlsym(v1, "kTCCServicePhotos");
  if (result)
  {
    qword_1ED641C10 = *result;
  }

  else
  {
    result = 37;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::initTCCtcc_identity_create(uint64_t a1, uint64_t a2)
{
  if (WebKit::initTCCtcc_identity_create(tcc_identity_type_t,char const*)::once != -1)
  {
    dispatch_once(&WebKit::initTCCtcc_identity_create(tcc_identity_type_t,char const*)::once, &__block_literal_global_18_2);
  }

  v4 = WebKit::softLinkTCCtcc_identity_create;

  return (v4)(a1, a2);
}

uint64_t ___ZN6WebKitL26initTCCtcc_identity_createE19tcc_identity_type_tPKc_block_invoke(WebKit *a1)
{
  v1 = WebKit::TCCLibrary(a1);
  result = dlsym(v1, "tcc_identity_create");
  WebKit::softLinkTCCtcc_identity_create = result;
  if (!result)
  {
    result = 44;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebTextTrackRepresentationCocoa::WebTextTrackRepresentationCocoa(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = WebCore::TextTrackRepresentationCocoa::TextTrackRepresentationCocoa();
  *v5 = &unk_1F10EB6C0;
  v5[6] = 0;
  v5[7] = 0;
  v5[5] = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 336), a3);
  v6 = *(a3 + 336);
  atomic_fetch_add(v6, 1u);
  *(a1 + 64) = v6;
  v7 = *(*(*(a3 + 48) + 8) + 552);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v8 + 24);
      if (v9)
      {
        v10 = *(v9 + 8);
        if (v10)
        {
          v11 = (v10 + 8);
          ++*(v10 + 8);
          v12 = WebKit::WebPage::fromCorePage(v10);
          if (v12)
          {
            v17 = v12;
            WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v12 + 24), v12 + 16);
            v14 = *(v17 + 24);
            if (v14)
            {
              atomic_fetch_add(v14, 1u);
            }
          }

          else
          {
            v14 = 0;
          }

          v15 = *(a1 + 56);
          *(a1 + 56) = v14;
          if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v15);
            WTF::fastFree(v15, v13);
          }

          WTF::RefCounted<WebCore::Page>::deref(v11);
        }
      }
    }
  }

  return a1;
}

void sub_19D8E3924(_Unwind_Exception *a1)
{
  WTF::RefCounted<WebCore::Page>::deref(v2);
  v5 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, v4);
  }

  v6 = *(v1 + 7);
  *(v1 + 7) = 0;
  if (v6)
  {
    if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6);
      WTF::fastFree(v6, v4);
    }
  }

  WebCore::TextTrackRepresentationCocoa::~TextTrackRepresentationCocoa(v1);
  _Unwind_Resume(a1);
}

WebCore::NativeImage *WebKit::WebTextTrackRepresentationCocoa::update(WebCore::NativeImage *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = this;
      this = WebKit::WebPage::videoPresentationManager((v2 - 16));
      v4 = this;
      v5 = *(this + 4);
      *(this + 4) = v5 + 1;
      v6 = *(v3 + 8);
      if (v6)
      {
        v7 = *(v6 + 8);
        if (v7)
        {
          v8 = MEMORY[0x1E69E2D10];
          if (*(*(v7 + 104) + 24) == *(*MEMORY[0x1E69E2D10] + 24))
          {
            (*(**(v3 + 2) + 16))(&v35);
            this = v35;
            if (v35)
            {
              v9 = WebCore::NativeImage::size(v35);
              v28 = WebCore::NativeImage::size(v35);
              WebCore::NativeImage::colorSpace(&v31, v35);
              v10 = v31;
              v31 = 0;
              v32 = v10;
              v33 = 1;
              MEMORY[0x19EB0C920](&v22, &v28, &v32, 0, 1.0);
              WebCore::ShareableBitmap::create();
              if (v24 == 1)
              {
                v12 = cf;
                cf = 0;
                if (v12)
                {
                  CFRelease(v12);
                }
              }

              if (v33 == 1)
              {
                v13 = v32;
                v32 = 0;
                if (v13)
                {
                  CFRelease(v13);
                }
              }

              v14 = v31;
              v31 = 0;
              if (v14)
              {
                CFRelease(v14);
              }

              if (v34)
              {
                WebCore::ShareableBitmap::createGraphicsContext(&v31, v34);
                if (v31)
                {
                  v22 = 0;
                  *&cf = v9;
                  *(&cf + 1) = SHIDWORD(v9);
                  v28 = 0;
                  v29 = v9;
                  v30 = SHIDWORD(v9);
                  WebCore::GraphicsContext::drawNativeImage();
                  WebCore::ShareableBitmap::createHandle();
                  if (v27)
                  {
                    v15 = *(v3 + 8);
                    if (!v15 || (v16 = *(v15 + 8)) == 0 || *(*(v16 + 104) + 24) != *(*v8 + 24))
                    {
                      __break(0xC471u);
                      JUMPOUT(0x19D8E3CE4);
                    }

                    *(v16 + 28) += 2;
                    WebKit::VideoPresentationManager::updateTextTrackRepresentationForVideoElement(v4, v16, &v22);
                    if (*(v16 + 28) == 2)
                    {
                      WebCore::Node::removedLastRef(v16);
                    }

                    else
                    {
                      *(v16 + 28) -= 2;
                    }
                  }

                  if (v27 == 1)
                  {
                    if (v26 == 1)
                    {
                      v17 = v25;
                      v25 = 0;
                      if (v17)
                      {
                        CFRelease(v17);
                      }
                    }

                    WTF::MachSendRight::~MachSendRight(&v22);
                  }

                  v18 = v31;
                  v31 = 0;
                  if (v18)
                  {
                    (*(*v18 + 8))(v18);
                  }
                }

                v19 = v34;
                v34 = 0;
                if (v19)
                {
                  WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v19, v11);
                }
              }

              this = v35;
              v35 = 0;
              if (this)
              {
                do
                {
                  v20 = *(this + 1);
                  if ((v20 & 1) == 0)
                  {
                    this = WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(*(this + 1), v11);
                    goto LABEL_37;
                  }

                  v21 = *(this + 1);
                  atomic_compare_exchange_strong_explicit(this + 1, &v21, v20 - 2, memory_order_relaxed, memory_order_relaxed);
                }

                while (v21 != v20);
                if (v20 == 3)
                {
                  this = (*(*this + 8))(this);
                }
              }
            }

LABEL_37:
            v5 = *(v4 + 4) - 1;
          }
        }
      }

      if (v5)
      {
        *(v4 + 4) = v5;
      }

      else
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  return this;
}

void sub_19D8E3D08(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef a10, char a11, CFTypeRef cf, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (*(v20 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v20);
  }

  else
  {
    *(v20 + 7) -= 2;
  }

  if (a19 == 1)
  {
    if (a13 == 1)
    {
      v23 = cf;
      cf = 0;
      if (v23)
      {
        CFRelease(v23);
      }
    }

    WTF::MachSendRight::~MachSendRight(&a9);
  }

  v24 = *(v21 - 72);
  *(v21 - 72) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(v21 - 48);
  *(v21 - 48) = 0;
  if (v25)
  {
    WTF::ThreadSafeRefCounted<WebCore::ShareableBitmap,(WTF::DestructionThread)0>::deref(v25, a2);
  }

  v26 = *(v21 - 40);
  *(v21 - 40) = 0;
  if (v26)
  {
    do
    {
      v27 = v26[1];
      if ((v27 & 1) == 0)
      {
        WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v26[1], a2);
        goto LABEL_19;
      }

      v28 = v26[1];
      atomic_compare_exchange_strong_explicit(v26 + 1, &v28, (v27 - 2), memory_order_relaxed, memory_order_relaxed);
    }

    while (v28 != v27);
    if (v27 == 3)
    {
      (*(*v26 + 1))(v26);
    }
  }

LABEL_19:
  if (v19[4] == 1)
  {
    (*(*v19 + 24))(v19);
  }

  else
  {
    --v19[4];
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::WebTextTrackRepresentationCocoa::setContentScale(WebKit::WebTextTrackRepresentationCocoa *this, float a2)
{
  result = WebCore::TextTrackRepresentationCocoa::setContentScale(this, a2);
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      result = WebKit::WebPage::videoPresentationManager((v6 - 16));
      v7 = result;
      ++result[4];
      v8 = *(this + 8);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          if (*(*(v9 + 104) + 24) == *(*MEMORY[0x1E69E2D10] + 24))
          {
            *(v9 + 28) += 2;
            result = WebKit::VideoPresentationManager::setTextTrackRepresentationContentScaleForVideoElement(result, v9, a2);
            if (*(v9 + 28) == 2)
            {
              result = WebCore::Node::removedLastRef(v9);
            }

            else
            {
              *(v9 + 28) -= 2;
            }
          }
        }
      }

      if (v7[4] == 1)
      {
        v10 = *(*v7 + 24);

        return v10(v7);
      }

      else
      {
        --v7[4];
      }
    }
  }

  return result;
}

void sub_19D8E3FE4(_Unwind_Exception *exception_object)
{
  if (*(v2 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v2);
  }

  else
  {
    *(v2 + 7) -= 2;
  }

  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

_DWORD *WebKit::WebTextTrackRepresentationCocoa::setHidden(WebKit::WebTextTrackRepresentationCocoa *this, char a2)
{
  result = WebCore::TextTrackRepresentationCocoa::setHidden(this);
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      result = WebKit::WebPage::videoPresentationManager((v6 - 16));
      v7 = result;
      ++result[4];
      v8 = *(this + 8);
      if (v8)
      {
        v9 = *(v8 + 8);
        if (v9)
        {
          if (*(*(v9 + 104) + 24) == *(*MEMORY[0x1E69E2D10] + 24))
          {
            *(v9 + 28) += 2;
            result = WebKit::VideoPresentationManager::setTextTrackRepresentationIsHiddenForVideoElement(result, v9, a2);
            if (*(v9 + 28) == 2)
            {
              result = WebCore::Node::removedLastRef(v9);
            }

            else
            {
              *(v9 + 28) -= 2;
            }
          }
        }
      }

      if (v7[4] == 1)
      {
        v10 = *(*v7 + 24);

        return v10(v7);
      }

      else
      {
        --v7[4];
      }
    }
  }

  return result;
}

void sub_19D8E415C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 7) == 2)
  {
    WebCore::Node::removedLastRef(v2);
  }

  else
  {
    *(v2 + 7) -= 2;
  }

  if (v1[4] == 1)
  {
    (*(*v1 + 24))(v1);
  }

  else
  {
    --v1[4];
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebTextTrackRepresentationCocoa::setBounds(uint64_t this, const IntRect *a2)
{
  v2 = *(this + 40) == a2->m_location.m_x && *(this + 44) == a2->m_location.m_y;
  if (!v2 || (*(this + 48) == a2->m_size.m_width ? (v3 = *(this + 52) == a2->m_size.m_height) : (v3 = 0), !v3))
  {
    *(this + 40) = *a2;
    return (*(**(this + 16) + 24))();
  }

  return this;
}

void WebKit::WebTextTrackRepresentationCocoa::~WebTextTrackRepresentationCocoa(WebKit::WebTextTrackRepresentationCocoa *this, void *a2)
{
  WebKit::WebTextTrackRepresentationCocoa::~WebTextTrackRepresentationCocoa(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

{
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  WebCore::TextTrackRepresentationCocoa::~TextTrackRepresentationCocoa(this);
}

WebKit::NetworkBroadcastChannelRegistry *WebKit::NetworkBroadcastChannelRegistry::didReceiveMessage(WebKit::NetworkBroadcastChannelRegistry *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  ++*this;
  v6 = *(a3 + 25);
  switch(v6)
  {
    case 0x1AAu:
      IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder>(a3, buf);
      if (v40 & 1) != 0 || (v7 = *a3, v28 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v29 = *(a3 + 3)) != 0) && v28 && ((*(*v29 + 16))(v29, v7), (v40))
      {
        v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v7)
        {
          v9 = v8;
          while (1)
          {
            v10 = *a2;
            if ((*a2 & 1) == 0)
            {
              break;
            }

            v11 = *a2;
            atomic_compare_exchange_strong_explicit(a2, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v11 == v10)
            {
              goto LABEL_21;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_21:
          v16 = WTF::fastMalloc(0x18);
          *v16 = &unk_1F10EB710;
          *(v16 + 1) = v9;
          *(v16 + 2) = a2;
          v30 = v16;
          if ((v40 & 1) == 0)
          {
            __break(1u);
LABEL_55:
            v38 = 0;
            v39 = 0;
            WTF::fastFree(v16, v7);
LABEL_26:
            v18 = v37;
            v37 = 0;
            if (v18)
            {
              WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(v18);
            }

LABEL_28:
            v19 = v36;
            v36 = 0;
            if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v7);
            }

            if (!v35)
            {
              v20 = v34;
              v34 = 0;
              if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v20, v7);
              }

              v21 = v33;
              v33 = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v7);
              }
            }

            v35 = -1;
            if (!v32)
            {
              v22 = *&buf[8];
              *&buf[8] = 0;
              if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v22, v7);
              }

              v23 = *buf;
              *buf = 0;
              if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v23, v7);
              }
            }

            return WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(this);
          }

          WebKit::NetworkBroadcastChannelRegistry::postMessage(this, a2, buf, &v36, &v37, &v30);
          v17 = v30;
          v30 = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }
        }
      }

      if (v40 != 1)
      {
        return WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(this);
      }

      v16 = v38;
      if (!v38)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    case 0x1ACu:
      IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin,WTF::String>>(buf, a3);
      if (v37 != 1)
      {
        return WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(this);
      }

      WebKit::NetworkBroadcastChannelRegistry::unregisterChannel(this, a2, buf, &v36);
LABEL_8:
      if ((v37 & 1) == 0)
      {
        return WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(this);
      }

      goto LABEL_28;
    case 0x1ABu:
      IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin,WTF::String>>(buf, a3);
      if (v37 != 1)
      {
        return WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(this);
      }

      WebKit::NetworkBroadcastChannelRegistry::registerChannel(this, a2, buf, &v36);
      goto LABEL_8;
  }

  v12 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
  {
    if (v6 >= 0x107F)
    {
      v25 = 4223;
    }

    else
    {
      v25 = v6;
    }

    v26 = (&IPC::Detail::messageDescriptions)[3 * v25];
    v27 = *(a3 + 7);
    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = v27;
    _os_log_error_impl(&dword_19D52D000, v12, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", buf, 0x16u);
  }

  v13 = *a3;
  v14 = *(a3 + 1);
  *a3 = 0;
  *(a3 + 1) = 0;
  v15 = *(a3 + 3);
  if (v15 && v14)
  {
    (*(*v15 + 16))(v15, v13);
  }

  return WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(this);
}

WebKit::NetworkBroadcastChannelRegistry *WTF::RefCounted<WebKit::NetworkBroadcastChannelRegistry>::deref(WebKit::NetworkBroadcastChannelRegistry *result)
{
  if (*result == 1)
  {
    WebKit::NetworkBroadcastChannelRegistry::~NetworkBroadcastChannelRegistry(result);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

WTF::StringImpl *IPC::Decoder::decode<std::tuple<WebCore::ClientOrigin,WTF::String>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String>,void>::decode<IPC::Decoder>(a2, a1);
  if ((a1[72] & 1) == 0)
  {
    v5 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a1, &v11);
  if (v17 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v17)))
  {
    result = IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String>,void>::decode<IPC::Decoder,WebCore::ClientOrigin>(a1, &v11, a2);
    if (v17)
    {
      if (!v16)
      {
        v6 = v15;
        v15 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }

        result = v14;
        v14 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v5);
        }
      }

      v16 = -1;
      if (!v13)
      {
        v7 = v12;
        v12 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v5);
        }

        result = v11;
        v11 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[72] = 0;
  }

  return result;
}

_BYTE *IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String>,void>::decode<IPC::Decoder,WebCore::ClientOrigin>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  do
  {
    if (*(a2 + 64))
    {
      mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a3);
      result = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a3 + 32));
      *(a3 + 64) = v11;
      v7 = 1;
      goto LABEL_4;
    }

    __break(1u);
LABEL_6:
    v8 = *a1;
    v9 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      break;
    }

    result = (*(*result + 16))(result, v8);
  }

  while ((v12 & 1) != 0);
  v7 = 0;
  *a3 = 0;
LABEL_4:
  *(a3 + 72) = v7;
  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a1, &v11);
  if (v17 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v17)))
  {
    result = IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WebCore::ClientOrigin>(a1, &v11, a2);
    if (v17)
    {
      if (!v16)
      {
        v6 = v15;
        v15 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, v5);
        }

        result = v14;
        v14 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v5);
        }
      }

      v16 = -1;
      if (!v13)
      {
        v7 = v12;
        v12 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v5);
        }

        result = v11;
        v11 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            return WTF::StringImpl::destroy(result, v5);
          }
        }
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[96] = 0;
  }

  return result;
}

WTF::StringImpl *IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WebCore::ClientOrigin>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a1, &v11);
  if (v12 & 1) != 0 || ((v8 = *a1, v9 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v10 = v9 == 0) : (v10 = 1), !v10 && (result = (*(*result + 16))(result, v8), (v12)))
  {
    result = IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WebCore::ClientOrigin,WTF::String>(a1, a2, &v11, a3);
    if (v12)
    {
      result = v11;
      v11 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v7);
        }
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[96] = 0;
  }

  return result;
}

atomic_uint *IPC::ArgumentCoder<std::tuple<WebCore::ClientOrigin,WTF::String,WebCore::MessageWithMessagePorts>,void>::decode<IPC::Decoder,WebCore::ClientOrigin,WTF::String>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  IPC::ArgumentCoder<WebCore::MessageWithMessagePorts,void>::decode(a1, &v14);
  if (v17)
  {
    if (*(a2 + 64) & 1) != 0 && (*(a3 + 8))
    {
      result = _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN7WebCore12ClientOriginEN3WTF6StringENS3_23MessageWithMessagePortsEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S6_S7_EJEJEJS4_S6_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(a4, a2, a3, &v14);
      a4[96] = 1;
      if (v17)
      {
        v10 = v15;
        if (v15)
        {
          v15 = 0;
          v16 = 0;
          WTF::fastFree(v10, v9);
        }

        result = v14;
        v14 = 0;
        if (result)
        {
          return WTF::ThreadSafeRefCounted<WebCore::SerializedScriptValue,(WTF::DestructionThread)0>::deref(result);
        }
      }

      return result;
    }

    __break(1u);
  }

  v11 = *a1;
  v12 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    result = (*(*result + 16))(result, v11);
  }

  *a4 = 0;
  a4[96] = 0;
  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJN7WebCore12ClientOriginEN3WTF6StringENS3_23MessageWithMessagePortsEEEC2B8sn200100IJLm0ELm1ELm2EEJS4_S6_S7_EJEJEJS4_S6_S7_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSB_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(a1);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v7 + 32);
  v8 = *a3;
  *a3 = 0;
  *(a1 + 64) = v8;
  v9 = *a4;
  *a4 = 0;
  *(a1 + 72) = v9;
  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 80, a4 + 2);
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages31NetworkBroadcastChannelRegistry11PostMessageENS2_10ConnectionEN6WebKit31NetworkBroadcastChannelRegistryES9_FvRS7_RKN7WebCore12ClientOriginERKNS_6StringEONSB_23MessageWithMessagePortsEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED1Ev(void *a1)
{
  *a1 = &unk_1F10EB710;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages31NetworkBroadcastChannelRegistry11PostMessageENS2_10ConnectionEN6WebKit31NetworkBroadcastChannelRegistryES9_FvRS7_RKN7WebCore12ClientOriginERKNS_6StringEONSB_23MessageWithMessagePortsEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10EB710;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *_ZN3WTF6Detail15CallableWrapperIZN3IPC18handleMessageAsyncIN8Messages31NetworkBroadcastChannelRegistry11PostMessageENS2_10ConnectionEN6WebKit31NetworkBroadcastChannelRegistryES9_FvRS7_RKN7WebCore12ClientOriginERKNS_6StringEONSB_23MessageWithMessagePortsEONS_17CompletionHandlerIFvvEEEEEEvRT0_RNS2_7DecoderEPT1_MT2_T3_EUlDpOT_E_vJEE4callEv(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 3246;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = v3;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  IPC::Encoder::encodeHeader(v4);
  v9 = v4;
  IPC::Connection::sendMessageImpl(v2, &v9, 0, 0);
  result = v9;
  v9 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v5);
    return bmalloc::api::tzoneFree(v7, v8);
  }

  return result;
}

uint64_t WebKit::GPUConnectionToWebProcess::setCaptureAttributionString(WebKit::GPUConnectionToWebProcess *this)
{
  v2 = MEMORY[0x1E69E2458];
  (*MEMORY[0x1E69E2458])();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    (*v2)();
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return 1;
    }
  }

  IPC::Connection::getAuditToken(*(*(this + 10) + 40), &v22);
  v3 = v24;
  if (v24 == 1)
  {
    v4 = WebKit::applicationVisibleNameFromOrigin(*(this + 22) + 8, &v21);
    if (!v21)
    {
      v5 = *(*(this + 10) + 272);
      if (v5)
      {
        atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
        v4 = MEMORY[0x19EB00B70](arg, v5);
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v4 = WTF::StringImpl::destroy(v5, v6);
        }
      }

      else
      {
        arg[0] = &stru_1F1147748;
        v4 = &stru_1F1147748;
      }

      v7 = arg[0];
      arg[0] = 0;
      v8 = v21;
      v21 = v7;
      if (v8)
      {

        v9 = arg[0];
        arg[0] = 0;
        if (v9)
        {
        }
      }
    }

    (*v2)(v4);
    if (objc_opt_respondsToSelector())
    {
      v10 = (*v2)();
      *arg = v22;
      v20 = v23;
      [v10 setCurrentAttributionWebsiteString:v21 auditToken:arg];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x1E696AEC0]);
      WebCore::copyLocalizedString(arg, @"%@ in %%@", v12);
      v13 = arg[0];
      arg[0] = 0;
      if (v13)
      {
        CFAutorelease(v13);
        v14 = arg[0];
        arg[0] = 0;
        if (v14)
        {
          CFRelease(v14);
        }
      }

      v15 = [v11 initWithFormat:v13, v21];
      v16 = (*v2)();
      *arg = v22;
      v20 = v23;
      [v16 setCurrentAttributionStringWithFormat:v15 auditToken:arg];
      if (v15)
      {
      }
    }

    v17 = v21;
    v21 = 0;
    if (v17)
    {
    }
  }

  return v3;
}

void sub_19D8E5090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
  }

  _Unwind_Resume(exception_object);
}