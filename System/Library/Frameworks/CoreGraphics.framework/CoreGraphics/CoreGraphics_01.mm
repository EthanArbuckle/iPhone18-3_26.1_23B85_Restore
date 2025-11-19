uint64_t check_sizes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  if (v8 < 0xFFFFFFFFFFFFFFLL)
  {
    v10 = a1[9] * v8 + 7;
    if (a1[11] < v10 >> 3)
    {
      CGPostError("CGBitmapContextCreate: invalid data bytes/row: should be at least %zu for %zu %s bits/component, %zu components, %s.", a2, a3, a4, a5, a6, a7, a8, v10 >> 3);
      return 0;
    }

    v11 = a1[17];
    if (v11)
    {
      if (a1[16] != a2)
      {
        v9 = "alpha bits per pixel value is incorrect";
        goto LABEL_3;
      }

      v12 = v8 * a2 + 7;
      if (v11 < v12 >> 3)
      {
        CGPostError("CGBitmapContextCreate: invalid alpha bytes/row: should be at least %zu for %zu %s bits/component.", a2, a3, a4, a5, a6, a7, a8, v12 >> 3);
        return 0;
      }
    }

    return 1;
  }

  v9 = "info->width >= SIZE_MAX / 256";
LABEL_3:
  unsupported(a1, v9, a3, a4, a5, a6, a7, a8);
  return 0;
}

char *RIPLayerCreateWithData(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a4;
  v13 = a3;
  v14 = a2;
  if (a1)
  {
    v15 = *(a1 + 2);
    if (v15 < 0)
    {
      return 0;
    }

    v16 = *(a1 + 3);
    if (v16 < 0)
    {
      return 0;
    }

    v17 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v30 = v17;
  if (!a3)
  {
    v13 = RIPGetDepthForLayerFormat(0, a2, 0, a4, a5, a6, a7, a8);
  }

  if (v13 != RIPGetDepthForLayerFormat(0, a2, a3, a4, a5, a6, a7, a8))
  {
    if (a5)
    {
      if (v10)
      {
        v18 = v9 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18;
      v29 = v8;
      if ((v14 & 1) == 0 && (v19 & 1) != 0 || (v20 = (*v13 >> 2) & 3, v20 == 1))
      {
        v21 = v12;
      }

      else
      {
        v9 = a5;
        v21 = v12;
        v10 = v12;
        if (v20 != 2)
        {
          v9 = 0;
          v10 = 0;
        }
      }

      v24 = initialize_deep_mask(v13) | v14 & 0x3E;
      if (v13[4])
      {
        v23 = v24 | 0x200;
      }

      else
      {
        v23 = v24;
      }

      goto LABEL_27;
    }

    return 0;
  }

  v21 = v12;
  v29 = v8;
  v23 = v14 & 0x3E;
LABEL_27:
  if ((v23 & 0x10) != 0)
  {
    v25 = 440;
  }

  else
  {
    v25 = 144;
  }

  v26 = malloc_type_calloc(1uLL, v25, 0x5EF03840uLL);
  v22 = v26;
  *v26 = RIPLayer_ripl_class;
  *(v26 + 2) = 1;
  *(v26 + 6) = v16;
  *(v26 + 7) = v23;
  *(v26 + 12) = v30;
  *(v26 + 5) = v15;
  v27 = v26 + 144;
  if ((v23 & 0x10) == 0)
  {
    v27 = 0;
  }

  *(v26 + 4) = v13;
  *(v26 + 5) = v27;
  *(v26 + 12) = v21;
  *(v26 + 13) = v29;
  *(v26 + 7) = a5;
  *(v26 + 16) = v10;
  *(v26 + 9) = v9;
  pthread_mutex_init((v26 + 80), 0);
  return v22;
}

dispatch_once_t RIPGetDepthForLayerFormat(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == -1)
  {
    return 0;
  }

  if (a1 >= 0x1B)
  {
    _CGHandleAssert("RIPGetDepthForLayerFormat", 97, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPLayerFormat.c", "format >= 0 && format < kRIPLayerFormat_Max", "invalid format %d", a6, a7, a8, a1);
  }

  v8 = (&RIPGetDepthForLayerFormat_blt_depth + 16 * a1);
  v9 = v8[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RIPGetDepthForLayerFormat_block_invoke;
  block[3] = &__block_descriptor_tmp_1947;
  v12 = a1;
  if (v9 != -1)
  {
    dispatch_once(v8 + 1, block);
  }

  if (*v8 == -1)
  {
    return 0;
  }

  else
  {
    return *v8;
  }
}

void CGBitmapContextInfoRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      v2(*(a1 + 112), *(a1 + 64));
    }

    CGColorSpaceRelease(*(a1 + 32));
    if (*(a1 + 100) == 1)
    {
      CGBitmapFreeData(*(a1 + 64), v3, v4, v5, v6, v7, v8, v9);
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      CGBitmapFreeData(v10, v3, v4, v5, v6, v7, v8, v9);
    }

    free(a1);
  }
}

void *CGColorTransformGetCache(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
    }

    if (v2 == CGColorTransformGetTypeID_type_id)
    {
      return *(v1[3] + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ripc_component_type_from_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 80);
  if (v9 <= 9)
  {
    if (v9 != 5 && v9 != 8)
    {
      goto LABEL_18;
    }

    return 1;
  }

  else if (v9 == 32)
  {
    if ((*(a1 + 41) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 4;
  }

  else
  {
    if (v9 != 16)
    {
      if (v9 == 10 && *(a1 + 72) == 32)
      {
        return 5;
      }

LABEL_18:
      _CGHandleAssert("ripc_component_type_from_info", 47, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPBitmapContext.c", "", "Unimplemented", a6, a7, a8, v8);
    }

    if (*(a1 + 41))
    {
      return 5;
    }

    else
    {
      return 2;
    }
  }
}

void CGGStateTextCopy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  text_state_release(*(a1 + 136), a2, a3, a4, a5, a6, a7, a8);
  v10 = *(a2 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 136) = v10;
  *(a1 + 20) |= 8u;
  *(a2 + 20) |= 8u;
}

char *CGGStateCreateCopy(uint64_t a1)
{
  v8 = malloc_type_malloc(0x98uLL, 0x10200404FA37D3AuLL);
  *v8 = v8;
  *(v8 + 1) = v8;
  *(v8 + 4) = 1;
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  *(v8 + 56) = *(a1 + 56);
  *(v8 + 40) = v10;
  *(v8 + 24) = v9;
  v11 = *(a1 + 72);
  if (v11)
  {
    CFRetain(*(a1 + 72));
  }

  *(v8 + 9) = v11;
  v12 = *(a1 + 112);
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 1u, memory_order_relaxed);
  }

  *(v8 + 14) = v12;
  *(a1 + 20) |= 1u;
  v13 = v8[20] | 1;
  v8[20] = v13;
  v14 = *(a1 + 96);
  *(v8 + 5) = *(a1 + 80);
  *(v8 + 6) = v14;
  v15 = *(a1 + 120);
  if (v15)
  {
    atomic_fetch_add_explicit(v15, 1u, memory_order_relaxed);
    v13 = v8[20];
  }

  *(v8 + 15) = v15;
  v8[20] = v13 | 2;
  *(a1 + 20) |= 2u;
  *(v8 + 16) = 0;
  CGGStateStrokeCopy(v8, a1, v2, v3, v4, v5, v6, v7);
  *(v8 + 17) = 0;
  CGGStateTextCopy(v8, a1, v16, v17, v18, v19, v20, v21);
  *(v8 + 18) = 0;
  CGGStateDeviceCopy(v8, a1);
  return v8;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  height = r2.size.height;
  width = r2.size.width;
  y = r2.origin.y;
  x = r2.origin.x;
  v6 = r1.origin.x;
  if (r1.origin.x == INFINITY || r1.origin.y == INFINITY)
  {
    v8 = r2.size.height;
    v9 = r2.size.width;
    v6 = r2.origin.x;
  }

  else
  {
    v8 = r1.size.height;
    v9 = r1.size.width;
    v10 = r1.origin.y;
    if (r2.origin.x == INFINITY || r2.origin.y == INFINITY)
    {
      y = r1.origin.y;
    }

    else
    {
      if (r1.size.width < 0.0 || r1.size.height < 0.0)
      {
        v18 = CGRectStandardize(r1);
        v6 = v18.origin.x;
        v10 = v18.origin.y;
        v9 = v18.size.width;
        v8 = v18.size.height;
      }

      if (width < 0.0 || height < 0.0)
      {
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        v20 = CGRectStandardize(v19);
        x = v20.origin.x;
        y = v20.origin.y;
        width = v20.size.width;
        height = v20.size.height;
      }

      v12 = v6 + v9;
      v6 = fmin(v6, x);
      v13 = y + height;
      y = fmin(v10, y);
      v9 = fmax(v12, x + width) - v6;
      v8 = fmax(v10 + v8, v13) - y;
    }
  }

  v14 = v6;
  v15 = y;
  v16 = v9;
  v17 = v8;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

double CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(CGRect *a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(v2 + 8);
  if (*(v2 + 2) <= 0xFFu && v3 * *(v2 + 16) * 0.5 > v3)
  {
    v3 = v3 * *(v2 + 16) * 0.5;
  }

  *&result = CGRectInset(*a1, -fabs(v3 * *(a2 + 40) + *(a2 + 24) * v3), -fabs(v3 * *(a2 + 48) + *(a2 + 32) * v3));
  return result;
}

uint64_t CG::DisplayList::fontResourceForFont(CG::DisplayList *this, CGFont *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 92);
  v3 = this + 328;
  v4 = *(this + 41);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 328;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    if (rect.size.width < 0.0 || rect.size.height < 0.0)
    {
      rect = CGRectStandardize(rect);
    }

    x = rect.origin.x;
    y = rect.origin.y;
    v8 = rect.size.width + dx * -2.0;
    rect.size.width = 0.0;
    rect.origin.x = INFINITY;
    if (v8 < 0.0)
    {
      rect.origin.y = INFINITY;
      rect.size.height = 0.0;
    }

    else
    {
      v9 = rect.size.height + dy * -2.0;
      rect.origin.y = INFINITY;
      rect.size.height = 0.0;
      if (v9 >= 0.0)
      {
        rect.origin.y = y + dy;
        rect.origin.x = x + dx;
        rect.size.width = v8;
        rect.size.height = v9;
      }
    }
  }

  return rect;
}

void CG::DisplayListResourceFont::setFont(CG::DisplayListResourceFont *this, void *cf)
{
  v3 = *(this + 2);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      CFRetain(cf);
      *(this + 2) = cf;
      font_info = get_font_info(cf);
      if (font_info)
      {
        v6 = font_info[2];
LABEL_9:
        *(this + 3) = v6;
        return;
      }
    }

    else
    {
      *(this + 2) = 0;
    }

    v6 = 0.0;
    goto LABEL_9;
  }
}

void sub_183EAE25C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[4];
  v13 = a2[5];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *(v11 + 16) < *(v14 + 16);
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *a5;
    v20 = a5[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *(v18 + 16) < *(v21 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *(v18 + 16) < *(v21 + 16);
      if (!v19)
      {
LABEL_19:
        if (!v22)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v23 = a2[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v24[4];
        v35 = v24[5];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = *(v33 + 16) < *(v36 + 16);
          std::__shared_weak_count::__release_shared[abi:fe200100](v35);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = *(v33 + 16) < *(v36 + 16);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if (!v37)
            {
              goto LABEL_54;
            }

LABEL_48:
            if (*a4)
            {
              *a3 = v24;
              return v24;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = *(v11 + 16) < *(v14 + 16);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *a5;
  v29 = a5[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = *(v27 + 16) < *(v30 + 16);
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = *(v27 + 16) < *(v30 + 16);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListResourceColorSpace>,CG::CompareResourceColorSpace,std::allocator<std::shared_ptr<CG::DisplayListResourceColorSpace>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColorSpace>>(a1, a3, a5);
}

uint64_t *std::__tree<unsigned long>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:fe200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t CG::DisplayList::getEntryDrawingState(uint64_t a1, void *a2, uint64_t a3)
{
  ++*(a1 + 816);
  v5 = a1 + 584;
  v6 = *(a1 + 584);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = a1 + 584;
  do
  {
    v8 = *(v6 + 32);
    v9 = *(v6 + 40);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = CG::CompareEntryStateDrawing::operator()(v8, a2, a3);
      std::__shared_weak_count::__release_shared[abi:fe200100](v9);
    }

    else
    {
      v10 = CG::CompareEntryStateDrawing::operator()(v8, a2, a3);
    }

    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v7 = v6;
      v11 = 0;
    }

    v6 = *(v6 + v11);
  }

  while (v6);
  if (v5 == v7)
  {
    goto LABEL_14;
  }

  v12 = *(v7 + 32);
  v13 = *(v7 + 40);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    if (CG::CompareEntryStateDrawing::operator()(v12, a2, a3))
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v13);
      goto LABEL_14;
    }

    v15 = *(v7 + 32);
    v17 = *(v7 + 40);
    v16 = v17 == 0;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (CG::CompareEntryStateDrawing::operator()(v12, a2, a3))
    {
      goto LABEL_14;
    }

    v15 = *(v7 + 32);
    v16 = 1;
    v17 = 0;
  }

  v18 = a2[14];
  v19 = *(v15 + 8);
  if (v19)
  {
    v19 = *(v19 + 16);
  }

  if (v18)
  {
    v20 = *(v18 + 4);
    if (v19)
    {
LABEL_24:
      v21 = *(v19 + 4);
      goto LABEL_27;
    }
  }

  else
  {
    v20 = 0;
    if (v19)
    {
      goto LABEL_24;
    }
  }

  v21 = 0;
LABEL_27:
  if (v20 < v21)
  {
    goto LABEL_28;
  }

  if (v18)
  {
    LODWORD(v18) = *(v18 + 4);
  }

  if (v19)
  {
    LODWORD(v19) = *(v19 + 4);
  }

  if (v18 > v19)
  {
LABEL_35:
    v22 = 0;
    if (v16)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v23 = a2[15];
  v24 = *(v23 + 40);
  v25 = *(v15 + 16);
  if (v25)
  {
    v25 = *(v25 + 16);
  }

  if (!v24)
  {
    v26 = 0;
    if (v25)
    {
      goto LABEL_46;
    }

LABEL_48:
    v27 = 0;
    goto LABEL_49;
  }

  v26 = *(v24 + 16);
  if (!v25)
  {
    goto LABEL_48;
  }

LABEL_46:
  v27 = *(v25 + 16);
LABEL_49:
  if (v26 < v27)
  {
    goto LABEL_28;
  }

  if (v24)
  {
    LODWORD(v24) = *(v24 + 16);
  }

  if (v25)
  {
    LODWORD(v25) = *(v25 + 16);
  }

  if (v24 > v25)
  {
    goto LABEL_35;
  }

  v28 = *(v23 + 16);
  v29 = *(v15 + 24);
  if (v29)
  {
    v29 = *(v29 + 16);
  }

  v30 = v28 ? *(v28 + 16) : 0;
  v31 = v29 ? *(v29 + 16) : 0;
  if (v30 < v31)
  {
    goto LABEL_28;
  }

  if (v28)
  {
    LODWORD(v28) = *(v28 + 16);
  }

  if (v29)
  {
    LODWORD(v29) = *(v29 + 16);
  }

  if (v28 > v29)
  {
    goto LABEL_35;
  }

  v32 = a2[18];
  v33 = *(v32 + 32);
  v34 = *(v15 + 32);
  if (v34)
  {
    v34 = *(v34 + 16);
  }

  v35 = v33 ? *(v33 + 16) : 0;
  v36 = v34 ? *(v34 + 16) : 0;
  if (v35 < v36)
  {
    goto LABEL_28;
  }

  if (v33)
  {
    LODWORD(v33) = *(v33 + 16);
  }

  if (v34)
  {
    LODWORD(v34) = *(v34 + 16);
  }

  if (v33 > v34)
  {
    goto LABEL_35;
  }

  v37 = *(v32 + 40);
  v38 = *(v15 + 40);
  if (v38)
  {
    v38 = *(v38 + 16);
  }

  v39 = v37 ? *(v37 + 16) : 0;
  v40 = v38 ? *(v38 + 16) : 0;
  if (v39 < v40)
  {
    goto LABEL_28;
  }

  if (v37)
  {
    LODWORD(v37) = *(v37 + 16);
  }

  if (v38)
  {
    LODWORD(v38) = *(v38 + 16);
  }

  if (v37 > v38)
  {
    goto LABEL_35;
  }

  v41 = *(v32 + 8);
  v42 = *(v15 + 48);
  if (v41 < v42)
  {
    goto LABEL_28;
  }

  if (v41 > v42)
  {
    goto LABEL_35;
  }

  v43 = *(v23 + 8);
  v44 = *(v15 + 56);
  if (v43 < v44)
  {
    goto LABEL_28;
  }

  if (v43 > v44)
  {
    goto LABEL_35;
  }

  v45 = *(v23 + 4);
  v46 = v45 >> 8;
  v47 = *(v15 + 96);
  if (v46 < v47 << 26 >> 26)
  {
    goto LABEL_28;
  }

  if (v46 > v47 << 26 >> 26)
  {
    goto LABEL_35;
  }

  v48 = (v45 & 0x1000000) != 0 ? *(a3 + 81) : 0;
  if (!v48 && (v47 & 0x40) != 0)
  {
    goto LABEL_28;
  }

  if (v48 > (*(v15 + 96) & 0x40u) >> 6)
  {
    goto LABEL_35;
  }

  if ((v45 & 0x2000000) == 0 && (v47 & 0x80) != 0)
  {
    goto LABEL_28;
  }

  if ((v45 & 0x2000000) != 0 && (v47 & 0x80) == 0)
  {
    goto LABEL_35;
  }

  v49 = v45 << 12 >> 28;
  if (v49 < v47 << 18 >> 26)
  {
    goto LABEL_28;
  }

  if (v49 > v47 << 18 >> 26)
  {
    goto LABEL_35;
  }

  if ((v47 & 0x4000) != 0 && !*(v32 + 24))
  {
    goto LABEL_28;
  }

  if (v47 & 0x4000) == 0 && (*(v32 + 24))
  {
    goto LABEL_35;
  }

  if ((v47 & 0x8000) != 0 && !*(v32 + 25))
  {
LABEL_28:
    v22 = 1;
    if (v16)
    {
      goto LABEL_37;
    }

LABEL_36:
    std::__shared_weak_count::__release_shared[abi:fe200100](v17);
    goto LABEL_37;
  }

  if (v47 & 0x8000) == 0 && (*(v32 + 25))
  {
    goto LABEL_35;
  }

  v22 = *(v32 + 28) < *(v15 + 100);
  if (!v16)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (!v13)
  {
    if (!v22)
    {
      return *(v7 + 32);
    }

LABEL_14:
    operator new();
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  if (v22)
  {
    goto LABEL_14;
  }

  return *(v7 + 32);
}

uint64_t *std::__tree_balance_after_insert[abi:fe200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t CG::DisplayList::clipResourceForClipStack(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1 + 232;
  v4 = *(a1 + 232);
  ++*(a1 + 704);
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = a1 + 232;
  do
  {
    v7 = *(v4 + 32);
    v6 = *(v4 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v8 + 4);
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a2 + 4);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    if (v9 >= v10)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (v9 < v10));
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_34;
  }

  v11 = *(v5 + 32);
  v12 = *(v5 + 40);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v11 + 16);
  if (v13)
  {
    LODWORD(v13) = *(v13 + 4);
  }

  if (v13 < *(a2 + 4))
  {
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    goto LABEL_34;
  }

  v16 = *(v5 + 32);
  v15 = *(v5 + 40);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v17 + 4);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a2 + 4);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  if (v19 < v18)
  {
LABEL_34:
    operator new();
  }

  return *(v5 + 32);
}

double CG::DisplayListResourceClip::setClipStack(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    CGClipStackRelease(v3);
    MutableCopy = CGClipStackCreateMutableCopy(a2);
    *(a1 + 16) = MutableCopy;
    if (MutableCopy)
    {
      if (MutableCopy[1])
      {
        *(a1 + 8) |= 0x1000u;
      }

      result = CGClipStackGetBounds(MutableCopy);
      *(a1 + 24) = result;
      *(a1 + 32) = v7;
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
    }

    else
    {
      *(a1 + 8) &= ~0x1000u;
      result = CGRectInfinite.origin.x;
      *(a1 + 24) = CGRectInfinite;
    }
  }

  return result;
}

void *CGClipStackCreateMutableCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x98uLL, 0x10A2040CE17A557uLL);
  v3 = v2;
  *v2 = 1;
  *(v2 + 4) = *(a1 + 4);
  v4 = *(a1 + 96);
  *(v2 + 5) = *(a1 + 80);
  *(v2 + 6) = v4;
  v5 = *(a1 + 64);
  *(v2 + 3) = *(a1 + 48);
  *(v2 + 4) = v5;
  v6 = *(a1 + 32);
  *(v2 + 1) = *(a1 + 16);
  *(v2 + 2) = v6;
  v2[14] = 3;
  v2[15] = 0;
  v7 = v2 + 15;
  v2[16] = 0;
  v8 = *(a1 + 120);
  if (!v8)
  {
    return v3;
  }

  if (*(a1 + 112) == 3)
  {
    *v7 = v8;
    v9 = 16;
    do
    {
      v10 = *(a1 + 8 * v9);
      if (v10)
      {
        atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
      }

      v2[v9] = v10;
      v11 = v9 - 15;
      ++v9;
    }

    while (v11 < v2[15]);
    return v3;
  }

  v12 = v8 + 3;
  v13 = malloc_type_malloc(8 * (v8 + 3), 0x2004093837F09uLL);
  if (!v13)
  {
    CGClipStackRelease(v3);
    return 0;
  }

  v3[16] = v13;
  v14 = *(a1 + 120);
  v3[14] = v12;
  v3[15] = v14;
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v16 = *(*(a1 + 128) + 8 * i);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
        v14 = *v7;
      }

      *(v3[16] + 8 * i) = v16;
    }
  }

  return v3;
}

void sub_183EAF2E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceClip>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_15;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[4];
  v13 = a2[5];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(v11 + 16);
  if (v15)
  {
    v16 = *(v15 + 4);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v14 + 16);
  if (v17)
  {
    v18 = *(v17 + 4);
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v18 = 0;
  if (v13)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
  }

LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  if (v16 >= v18)
  {
    v21 = a2[4];
    v22 = a2[5];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *a5;
    v23 = a5[1];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *(v21 + 16);
    if (v25)
    {
      v26 = *(v25 + 4);
    }

    else
    {
      v26 = 0;
    }

    v37 = *(v24 + 16);
    if (v37)
    {
      v38 = *(v37 + 4);
      if (!v23)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v38 = 0;
      if (!v23)
      {
LABEL_52:
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:fe200100](v22);
        }

        if (v26 >= v38)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v39 = a2[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          v41 = a2;
          do
          {
            v40 = v41[2];
            v28 = *v40 == v41;
            v41 = v40;
          }

          while (!v28);
        }

        if (v40 == v9)
        {
          goto LABEL_78;
        }

        v42 = *a5;
        v43 = a5[1];
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v45 = v40[4];
        v44 = v40[5];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = *(v42 + 16);
        if (v46)
        {
          v47 = *(v46 + 4);
        }

        else
        {
          v47 = 0;
        }

        v48 = *(v45 + 16);
        if (v48)
        {
          v49 = *(v48 + 4);
          if (!v44)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v49 = 0;
          if (!v44)
          {
LABEL_75:
            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:fe200100](v43);
            }

            if (v47 >= v49)
            {
              goto LABEL_80;
            }

LABEL_78:
            if (*a4)
            {
              *a3 = v40;
              return v40;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        std::__shared_weak_count::__release_shared[abi:fe200100](v44);
        goto LABEL_75;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v23);
    goto LABEL_52;
  }

LABEL_15:
  if (*a1 == a2)
  {
    v20 = a2;
LABEL_43:
    if (*a2)
    {
      *a3 = v20;
      return v20 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v19 = *a2;
  if (*a2)
  {
    do
    {
      v20 = v19;
      v19 = v19[1];
    }

    while (v19);
  }

  else
  {
    v27 = a2;
    do
    {
      v20 = v27[2];
      v28 = *v20 == v27;
      v27 = v20;
    }

    while (v28);
  }

  v29 = v20[4];
  v30 = v20[5];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = *a5;
  v31 = a5[1];
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = *(v29 + 16);
  if (v33)
  {
    v34 = *(v33 + 4);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v32 + 16);
  if (v35)
  {
    v36 = *(v35 + 4);
    if (!v31)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v36 = 0;
  if (v31)
  {
LABEL_39:
    std::__shared_weak_count::__release_shared[abi:fe200100](v31);
  }

LABEL_40:
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
  }

  if (v34 < v36)
  {
    goto LABEL_43;
  }

LABEL_80:

  return std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceClip>>(a1, a3, a5);
}

uint64_t CG::DisplayList::functionResourceForFunction(CG::DisplayList *this, CGFunction *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 98);
  v3 = this + 496;
  v4 = *(this + 62);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 496;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

uint64_t CG::DisplayList::softMaskResourceForSoftMask(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(a1 + 776);
  v3 = a1 + 472;
  v4 = *(a1 + 472);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = a1 + 472;
  do
  {
    v7 = *(v4 + 32);
    v6 = *(v4 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (v8 < a2));
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 32);
  v10 = *(v5 + 40);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 32);
    v12 = *(v5 + 40);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 32);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 32);
}

uint64_t CG::DisplayList::styleResourceForStyle(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(a1 + 768);
  v3 = a1 + 448;
  v4 = *(a1 + 448);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = a1 + 448;
  do
  {
    v7 = *(v4 + 32);
    v6 = *(v4 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (v8 < a2));
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 32);
  v10 = *(v5 + 40);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 32);
    v12 = *(v5 + 40);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 32);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 32);
}

CFDictionaryRef CGCFDictionaryCreateCopy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryCreateCopy(0, a1);
}

void sub_183EAFDFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateDrawing const>,CG::CompareEntryStateDrawing,std::allocator<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a2[4];
  v14 = a2[5];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = CG::CompareEntryStateDrawing::operator()(v11, v13);
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = *a5;
    v21 = a5[1];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = CG::CompareEntryStateDrawing::operator()(v18, v20);
      std::__shared_weak_count::__release_shared[abi:fe200100](v21);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = CG::CompareEntryStateDrawing::operator()(v18, v20);
      if (!v19)
      {
LABEL_19:
        if (!v22)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v23 = a2[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = v24[4];
        v36 = v24[5];
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = CG::CompareEntryStateDrawing::operator()(v33, v35);
          std::__shared_weak_count::__release_shared[abi:fe200100](v36);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = CG::CompareEntryStateDrawing::operator()(v33, v35);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if (!v37)
            {
              goto LABEL_54;
            }

LABEL_48:
            if (*a4)
            {
              *a3 = v24;
              return v24;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = CG::CompareEntryStateDrawing::operator()(v11, v13);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *a5;
  v30 = a5[1];
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = CG::CompareEntryStateDrawing::operator()(v27, v29);
    std::__shared_weak_count::__release_shared[abi:fe200100](v30);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = CG::CompareEntryStateDrawing::operator()(v27, v29);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListEntryStateDrawing const>,CG::CompareEntryStateDrawing,std::allocator<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateDrawing const>>(a1, a3, a5);
}

uint64_t CGGStateGetFillColor(uint64_t a1)
{
  result = *(a1 + 72);
  if (!result)
  {
    v3 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
    *(a1 + 72) = CGColorSpaceCopyDefaultColor(v3);
    CGColorSpaceRelease(v3);
    return *(a1 + 72);
  }

  return result;
}

uint64_t CG::DisplayList::colorResourceForColor(CG::DisplayList *this, CGColor *a2)
{
  result = 0;
  if (a2 && (*(this + 59) & 1) != 0)
  {
    ++*(this + 89);
    v5 = *(this + 32);
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = (this + 256);
    do
    {
      v7 = CGColorCompare(*(v5[4] + 16), a2);
      if (v7 != -1)
      {
        v6 = v5;
      }

      v5 = v5[v7 == -1];
    }

    while (v5);
    if (v6 == (this + 256) || CGColorCompare(*(v6[4] + 16), a2) == -1 || CGColorCompare(a2, *(v6[4] + 16)) == -1)
    {
LABEL_11:
      operator new();
    }

    return v6[4];
  }

  return result;
}

uint64_t CG::DisplayList::colorSpaceResourceForColorSpace(CG::DisplayList *this, CGColorSpace *a2)
{
  if (!a2)
  {
    return 0;
  }

  ++*(this + 90);
  v3 = this + 280;
  v4 = *(this + 35);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = this + 280;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 16);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_15;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    if (*(v9 + 16) < a2)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v10);
      goto LABEL_15;
    }

    v13 = *(v5 + 4);
    v12 = *(v5 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *(v13 + 16);
      std::__shared_weak_count::__release_shared[abi:fe200100](v12);
    }

    else
    {
      v14 = *(v13 + 16);
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    if (v14 <= a2)
    {
      return *(v5 + 4);
    }

LABEL_15:
    operator new();
  }

  if (*(v9 + 16) != a2)
  {
    goto LABEL_15;
  }

  return *(v5 + 4);
}

void sub_183EB0660(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_183EB0700(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::shared_ptr<CG::DisplayListResourceColor>,CG::CompareResourceColor,std::allocator<std::shared_ptr<CG::DisplayListResourceColor>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColor>>(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2 || CGColorCompare(*(*a5 + 16), *(a2[4] + 16)) == -1)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if (CGColorCompare(*(v12[4] + 16), *(*a5 + 16)) != -1)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (CGColorCompare(*(a2[4] + 16), *(*a5 + 16)) != -1)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = a2 + 1;
  v13 = a2[1];
  if (v13)
  {
    v14 = a2[1];
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (CGColorCompare(*(*a5 + 16), *(v15[4] + 16)) == -1)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::shared_ptr<CG::DisplayListResourceColor>,CG::CompareResourceColor,std::allocator<std::shared_ptr<CG::DisplayListResourceColor>>>::__find_equal<std::shared_ptr<CG::DisplayListResourceColor>>(a1, a3, a5);
}

uint64_t CG::DisplayList::getEntryFillState(CG::DisplayList *this, const CG::DisplayListResourceColor *a2)
{
  ++*(this + 103);
  v3 = this + 608;
  v4 = *(this + 76);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = this + 608;
  do
  {
    v7 = *(v4 + 4);
    v6 = *(v4 + 5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *(v7 + 8);
      std::__shared_weak_count::__release_shared[abi:fe200100](v6);
    }

    else
    {
      v8 = *(v7 + 8);
    }

    if (v8 >= a2)
    {
      v5 = v4;
    }

    v4 = *&v4[8 * (v8 < a2)];
  }

  while (v4);
  if (v3 == v5)
  {
    goto LABEL_13;
  }

  v9 = *(v5 + 4);
  v10 = *(v5 + 5);
  if (!v10)
  {
    if (*(v9 + 8) == a2)
    {
      return *(v5 + 4);
    }

LABEL_13:
    operator new();
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  if (*(v9 + 8) < a2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v10);
    goto LABEL_13;
  }

  v13 = *(v5 + 4);
  v12 = *(v5 + 5);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = *(v13 + 8);
    std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  }

  else
  {
    v14 = *(v13 + 8);
  }

  std::__shared_weak_count::__release_shared[abi:fe200100](v10);
  if (v14 > a2)
  {
    goto LABEL_13;
  }

  return *(v5 + 4);
}

void sub_183EB0B40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::shared_ptr<CG::DisplayListEntryStateFill const>,CG::CompareEntryStateFill,std::allocator<std::shared_ptr<CG::DisplayListEntryStateFill const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateFill const>>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_7;
  }

  v11 = *a5;
  v12 = a5[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2[4];
  v13 = a2[5];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *(v11 + 8) < *(v14 + 8);
    std::__shared_weak_count::__release_shared[abi:fe200100](v13);
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_13:
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    v18 = a2[4];
    v19 = a2[5];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = *a5;
    v20 = a5[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *(v18 + 8) < *(v21 + 8);
      std::__shared_weak_count::__release_shared[abi:fe200100](v20);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v22 = *(v18 + 8) < *(v21 + 8);
      if (!v19)
      {
LABEL_19:
        if (!v22)
        {
          *a3 = a2;
          *a4 = a2;
          return a4;
        }

        a4 = a2 + 1;
        v23 = a2[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          v32 = a2;
          do
          {
            v24 = v32[2];
            v26 = *v24 == v32;
            v32 = v24;
          }

          while (!v26);
        }

        if (v24 == v9)
        {
          goto LABEL_48;
        }

        v33 = *a5;
        v34 = a5[1];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v24[4];
        v35 = v24[5];
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = *(v33 + 8) < *(v36 + 8);
          std::__shared_weak_count::__release_shared[abi:fe200100](v35);
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v37 = *(v33 + 8) < *(v36 + 8);
          if (v34)
          {
LABEL_47:
            std::__shared_weak_count::__release_shared[abi:fe200100](v34);
            if (!v37)
            {
              goto LABEL_54;
            }

LABEL_48:
            if (*a4)
            {
              *a3 = v24;
              return v24;
            }

            else
            {
              *a3 = a2;
            }

            return a4;
          }
        }

        if (!v37)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }

    std::__shared_weak_count::__release_shared[abi:fe200100](v19);
    goto LABEL_19;
  }

  v15 = *(v11 + 8) < *(v14 + 8);
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:fe200100](v12);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (*a1 == a2)
  {
    v17 = a2;
    goto LABEL_33;
  }

  v16 = *a2;
  if (*a2)
  {
    do
    {
      v17 = v16;
      v16 = v16[1];
    }

    while (v16);
  }

  else
  {
    v25 = a2;
    do
    {
      v17 = v25[2];
      v26 = *v17 == v25;
      v25 = v17;
    }

    while (v26);
  }

  v27 = v17[4];
  v28 = v17[5];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = *a5;
  v29 = a5[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    v31 = *(v27 + 8) < *(v30 + 8);
    std::__shared_weak_count::__release_shared[abi:fe200100](v29);
    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v31 = *(v27 + 8) < *(v30 + 8);
    if (v28)
    {
LABEL_29:
      std::__shared_weak_count::__release_shared[abi:fe200100](v28);
      if (!v31)
      {
        goto LABEL_54;
      }

      goto LABEL_33;
    }
  }

  if (v31)
  {
LABEL_33:
    if (*a2)
    {
      *a3 = v17;
      return v17 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

LABEL_54:

  return std::__tree<std::shared_ptr<CG::DisplayListEntryStateFill const>,CG::CompareEntryStateFill,std::allocator<std::shared_ptr<CG::DisplayListEntryStateFill const>>>::__find_equal<std::shared_ptr<CG::DisplayListEntryStateFill const>>(a1, a3, a5);
}

CGPoint *CG::DisplayListEntryGlyphs::setGlyphsAndPositions(CG::DisplayListEntryGlyphs *this, unsigned __int16 *a2, const CGPoint *a3, uint64_t a4)
{
  v7 = *(this + 29);
  if (v7 != a2)
  {
    free(v7);
    *(this + 29) = 0;
    v9 = malloc_type_malloc(2 * a4, 0x1000040BDFB0063uLL);
    *(this + 29) = v9;
    if (v9)
    {
      memcpy(v9, a2, 2 * a4);
    }
  }

  result = *(this + 30);
  if (result != a3)
  {
    free(result);
    *(this + 30) = 0;
    result = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
    *(this + 30) = result;
    if (*(this + 29))
    {
      result = memcpy(result, a3, 16 * a4);
    }
  }

  *(this + 31) = a4;
  return result;
}

void CG::DisplayList::appendEntry(CG::DisplayList *this, const CG::DisplayListEntry *a2)
{
  v4 = this + 8 * *(a2 + 8);
  ++*(v4 + 106);
  if ((*(a2 + 10) & 0x10) != 0)
  {
    *(this + 174) = (*(this + 85) - *(this + 84)) >> 4;
  }

  if (*(this + 57) == 1)
  {
    v5 = *(a2 + 2);
    v13.origin = *(a2 + 1);
    v13.size = v5;
    CG::DisplayList::updateBoundingAndTransparentShapes(this, &v13, *(a2 + 2) >> 8);
  }

  v6 = *(this + 85);
  v7 = *(this + 86);
  if (v6 < v7)
  {
    std::shared_ptr<CG::DisplayListEntry const>::shared_ptr[abi:fe200100]<CG::DisplayListEntry const,0>(*(this + 85), a2);
  }

  v8 = *(this + 84);
  v9 = (v6 - v8) >> 4;
  if (!((v9 + 1) >> 60))
  {
    v10 = v7 - v8;
    v11 = v10 >> 3;
    if (v10 >> 3 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v14 = this + 672;
    if (v12)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<CG::DisplayListEntry const>>>(v12);
    }

    v13.origin.x = 0.0;
    *&v13.origin.y = 16 * v9;
    v13.size = (16 * v9);
    std::shared_ptr<CG::DisplayListEntry const>::shared_ptr[abi:fe200100]<CG::DisplayListEntry const,0>((16 * v9), a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

void CG::DisplayList::updateBoundingAndTransparentShapes(CG::DisplayList *this, const CGRect *a2, __int16 a3)
{
  if (*(this + 57) == 1)
  {
    *(this + 72) = CGRectUnion(*(this + 72), *a2);
    if ((a3 & 0x1000) != 0)
    {
      v6 = *(this + 13);
      v27 = CGRectIntegral(*a2);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
      if (v27.size.width < 0.0 || v27.size.height < 0.0)
      {
        v17 = COERCE_DOUBLE(CGRectStandardize(v27));
        if (v17 <= 1073741820.0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1073741820.0;
        }

        if (v17 >= -1073741820.0)
        {
          v13 = v18;
        }

        else
        {
          v13 = 3221225472;
        }

        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        v29 = CGRectStandardize(v28);
        if (v29.origin.y <= 1073741820.0)
        {
          v19 = v29.origin.y;
        }

        else
        {
          v19 = 1073741820.0;
        }

        if (v29.origin.y >= -1073741820.0)
        {
          v15 = v19;
        }

        else
        {
          v15 = 3221225472;
        }

        v30.origin.x = x;
        v30.origin.y = y;
        v30.size.width = width;
        v30.size.height = height;
        v31 = CGRectStandardize(v30);
        v20 = v31.origin.x + v31.size.width;
        if (v20 <= 1073741820.0)
        {
          v21 = v20;
        }

        else
        {
          v21 = 1073741820.0;
        }

        if (v20 >= -1073741820.0)
        {
          v16 = v21;
        }

        else
        {
          v16 = 3221225472;
        }

        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        v33 = CGRectStandardize(v32);
        y = v33.origin.y;
        height = v33.size.height;
      }

      else
      {
        v11 = 1073741820.0;
        if (x <= 1073741820.0)
        {
          v12 = x;
        }

        else
        {
          v12 = 1073741820.0;
        }

        if (x >= -1073741820.0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 3221225472;
        }

        if (y <= 1073741820.0)
        {
          v14 = y;
        }

        else
        {
          v14 = 1073741820.0;
        }

        if (y >= -1073741820.0)
        {
          v15 = v14;
        }

        else
        {
          v15 = 3221225472;
        }

        if (x + width <= 1073741820.0)
        {
          v11 = x + width;
        }

        if (x + width >= -1073741820.0)
        {
          v16 = v11;
        }

        else
        {
          v16 = 3221225472;
        }
      }

      v22 = 1073741820.0;
      if (y + height <= 1073741820.0)
      {
        v22 = y + height;
      }

      if (y + height >= -1073741820.0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 3221225472;
      }

      if (v13 < v16 && v15 < v23)
      {
        v25 = *v6;
        if (!*v6)
        {
          v25 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
          *(v25 + 8) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 40) = 0u;
          *(v25 + 56) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 120) = 0u;
          *(v25 + 136) = 0u;
          *(v25 + 152) = 0u;
          *(v25 + 168) = 0u;
          *(v25 + 184) = 0u;
          *(v25 + 200) = 0u;
          *(v25 + 216) = 0u;
          *(v25 + 232) = 0u;
          *(v25 + 248) = 0u;
          *(v25 + 33) = 0;
          *v25 = 8;
          *(v25 + 2) = v25 + 32;
          *(v25 + 3) = v25 + 160;
          *v6 = v25;
        }

        if (shape_accum_add(v25, v13, v15, v16, v23) >= 1)
        {
          v26 = v6[1];
          if (v26)
          {
            if (v26 != &the_empty_shape)
            {
              free(v26);
            }

            v6[1] = 0;
          }

          *(v6 + 12) &= ~1u;
        }
      }
    }
  }
}

unsigned int *CG::DisplayListEntryGlyphs::_hash(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (*(*(v5 + 16) + 152))(*(v5 + 112));
      if (v6)
      {
        v7 = v6;
        v8 = strlen(v6);
        XXH64_update(a2, v7, v8);
      }
    }
  }

  XXH64_update(a2, (a1 + 88), 0x30uLL);
  XXH64_update(a2, (a1 + 136), 0x30uLL);
  XXH64_update(a2, (a1 + 184), 8uLL);
  XXH64_update(a2, (a1 + 192), 0x10uLL);
  XXH64_update(a2, (a1 + 216), 4uLL);
  XXH64_update(a2, (a1 + 220), 4uLL);
  v9 = *(a1 + 232);
  if (v9)
  {
    XXH64_update(a2, v9, 2 * *(a1 + 248));
  }

  v10 = *(a1 + 240);
  if (v10)
  {
    XXH64_update(a2, v10, 16 * *(a1 + 248));
  }

  return CG::DisplayListEntry::_hash(a1, a2);
}

unsigned int *XXH64_update(unsigned int *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = result[18];
    if (v6 + __n > 0x1F)
    {
      v7 = &__src[__n];
      if (v6)
      {
        result = memcpy(result + v6 + 40, __src, (32 - v6));
        v8 = __ROR8__(v5[2] - 0x3D4D51C2D82B14B1 * v5[6], 33);
        v5[1] = 0x9E3779B185EBCA87 * __ROR8__(v5[1] - 0x3D4D51C2D82B14B1 * v5[5], 33);
        v5[2] = 0x9E3779B185EBCA87 * v8;
        v9 = 0x9E3779B185EBCA87 * __ROR8__(v5[4] - 0x3D4D51C2D82B14B1 * v5[8], 33);
        v5[3] = 0x9E3779B185EBCA87 * __ROR8__(v5[3] - 0x3D4D51C2D82B14B1 * v5[7], 33);
        v5[4] = v9;
        v4 += (32 - *(v5 + 18));
        *(v5 + 18) = 0;
      }

      if (v4 + 32 <= v7)
      {
        v10 = v5[1];
        v11 = v5[2];
        v12 = v5[3];
        v13 = v5[4];
        do
        {
          v10 = 0x9E3779B185EBCA87 * __ROR8__(v10 - 0x3D4D51C2D82B14B1 * *v4, 33);
          v5[1] = v10;
          v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
          v5[2] = v11;
          v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
          v5[3] = v12;
          v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
          v5[4] = v13;
          v4 += 32;
        }

        while (v4 <= v7 - 32);
      }

      if (v4 < v7)
      {
        v14 = v7 - v4;
        result = memcpy(v5 + 5, v4, v14);
        *(v5 + 18) = v14;
      }
    }

    else
    {
      result = memcpy(result + v6 + 40, __src, __n);
      *(v5 + 18) += v3;
    }
  }

  return result;
}

unsigned int *CG::DisplayListEntry::_hash(uint64_t a1, unsigned int *a2)
{
  __src = *(a1 + 8);
  XXH64_update(a2, &__src, 4uLL);
  __src = *(a1 + 8) >> 8;
  XXH64_update(a2, &__src, 4uLL);

  return XXH64_update(a2, (a1 + 16), 0x20uLL);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::shared_ptr<CG::DisplayListEntry const>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void sub_183EB1750(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::shared_ptr<TextLine>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fe200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double CGContextGetEDRTargetHeadroom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    LODWORD(result) = *(*(*(a1 + 96) + 120) + 48);
  }

  else
  {
    handle_invalid_context("CGContextGetEDRTargetHeadroom", a1, a3, a4, a5, a6, a7, a8);
    return 0.0;
  }

  return result;
}

void context_reclaim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        CFRelease(v9);
        *(a1 + 40) = 0;
      }

      v10 = *(a1 + 48);
      if (v10)
      {
        v10(a1);
        *(a1 + 48) = 0;
      }

      return;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  handle_invalid_context("context_reclaim", v11, a3, a4, a5, a6, a7, a8);
}

double CGContextDelegateFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 24);
    *(a1 + 16) = 0;
    if (v3)
    {
      v3(a1);
    }

    v4 = unk_1EF23D400;
    *(a1 + 216) = xmmword_1EF23D3F0;
    *(a1 + 232) = v4;
    v5 = unk_1EF23D420;
    *(a1 + 248) = xmmword_1EF23D410;
    *(a1 + 264) = v5;
    v6 = *&off_1EF23D3C0;
    *(a1 + 152) = xmmword_1EF23D3B0;
    *(a1 + 168) = v6;
    v7 = *&off_1EF23D3E0;
    *(a1 + 184) = xmmword_1EF23D3D0;
    *(a1 + 200) = v7;
    v8 = *&off_1EF23D380;
    *(a1 + 88) = xmmword_1EF23D370;
    *(a1 + 104) = v8;
    v9 = *&off_1EF23D3A0;
    *(a1 + 120) = xmmword_1EF23D390;
    *(a1 + 136) = v9;
    v10 = *&off_1EF23D340;
    *(a1 + 24) = gZombieVTable;
    *(a1 + 40) = v10;
    result = *&xmmword_1EF23D350;
    v12 = *&off_1EF23D360;
    *(a1 + 56) = xmmword_1EF23D350;
    *(a1 + 72) = v12;
    *(a1 + 288) = 0;
  }

  return result;
}

void dlRecorder_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && (v9 = *(a1 + 288)) != 0)
  {
    v10 = *(*v9 + 8);

    v10();
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", a2, a3, a4, a5, a6, a7, a8, "dlRecorder_Finalize");
  }
}

void CG::DisplayListRecorder::~DisplayListRecorder(CG::DisplayListRecorder *this)
{
  CG::DisplayListRecorder::~DisplayListRecorder(this);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23A9F8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __CGColorCreate_block_invoke()
{
  v0 = *MEMORY[0x1E69E5908];
  if (*MEMORY[0x1E69E5908])
  {
    LOBYTE(v0) = _objc_getClassForTag() != 0;
  }

  CGColorCreate_supportsTaggedPointers = v0;
}

uint64_t *__color_space_state_create_sRGB_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncSRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_sRGB_s = v1;
  return result;
}

void __CGColorSpaceCreateWithName_block_invoke()
{
  v3[88] = *MEMORY[0x1E69E9840];
  v3[0] = @"kCGColorSpaceDeviceGray";
  v3[1] = CGColorSpaceCreateDeviceGray;
  v3[2] = @"kCGColorSpaceDeviceRGB";
  v3[3] = CGColorSpaceCreateDeviceRGB;
  v3[4] = @"kCGColorSpaceDeviceCMYK";
  v3[5] = CGColorSpaceCreateDeviceCMYK;
  v3[6] = @"kCGColorSpaceUncalibratedGray";
  v3[7] = CGColorSpaceCreateUncalibratedGray;
  v3[8] = @"kCGColorSpaceUncalibratedRGB";
  v3[9] = CGColorSpaceCreateUncalibratedRGB;
  v3[10] = @"kCGColorSpaceUncalibratedCMYK";
  v3[11] = CGColorSpaceCreateUncalibratedCMYK;
  v3[12] = @"kCGColorSpaceGenericGray";
  v3[13] = CGColorSpaceCreateGenericGray;
  v3[14] = @"kCGColorSpaceGenericRGB";
  v3[15] = CGColorSpaceCreateGenericRGB;
  v3[16] = @"kCGColorSpaceGenericCMYK";
  v3[17] = CGColorSpaceCreateGenericCMYK;
  v3[18] = @"kCGColorSpaceDisplayP3";
  v3[19] = CGColorSpaceCreateDisplayP3;
  v3[20] = @"kCGColorSpaceExtendedDisplayP3";
  v3[21] = CGColorSpaceCreateExtendedDisplayP3;
  v3[22] = @"kCGColorSpaceLinearDisplayP3";
  v3[23] = CGColorSpaceCreateLinearDisplayP3;
  v3[24] = @"kCGColorSpaceExtendedLinearDisplayP3";
  v3[25] = CGColorSpaceCreateExtendedLinearDisplayP3;
  v3[26] = @"kCGColorSpaceDisplayP3_PQ";
  v3[27] = CGColorSpaceCreateDisplayP3_PQ;
  v3[28] = @"kCGColorSpaceDisplayP3_HLG";
  v3[29] = CGColorSpaceCreateDisplayP3_HLG;
  v3[30] = @"kCGColorSpaceDisplayP3_709OETF";
  v3[31] = CGColorSpaceCreateDisplayP3_709OETF;
  v3[32] = @"kCGColorSpaceGenericGrayGamma2_2";
  v3[33] = CGColorSpaceCreateGenericGrayGamma22;
  v3[34] = @"kCGColorSpaceAdobeRGB1998";
  v3[35] = CGColorSpaceCreateAdobeRGB1998;
  v3[36] = @"kCGColorSpaceSRGB";
  v3[37] = CGColorSpaceCreateSRGB;
  v3[38] = @"kCGColorSpaceGenericLab";
  v3[39] = CGColorSpaceCreateGenericLab;
  v3[40] = @"kCGColorSpaceGenericRGBLinear";
  v3[41] = CGColorSpaceCreateGenericRGBLinear;
  v3[42] = @"kCGColorSpaceGenericXYZ";
  v3[43] = CGColorSpaceCreateGenericXYZ;
  v3[44] = @"kCGColorSpaceACESCGLinear";
  v3[45] = CGColorSpaceCreateACESCGLinear;
  v3[46] = @"kCGColorSpaceITUR_709";
  v3[47] = CGColorSpaceCreateITUR_709;
  v3[48] = @"kCGColorSpaceITUR_709_PQ";
  v3[49] = CGColorSpaceCreateITUR_709_PQ;
  v3[50] = @"kCGColorSpaceITUR_709_HLG";
  v3[51] = CGColorSpaceCreateITUR_709_HLG;
  v3[52] = @"kCGColorSpaceITUR_2020";
  v3[53] = CGColorSpaceCreateITUR_2020;
  v3[54] = @"kCGColorSpaceITUR_2020_sRGBGamma";
  v3[55] = CGColorSpaceCreateITUR_2020_sRGBGamma;
  v3[56] = @"kCGColorSpaceLinearITUR_2020";
  v3[57] = CGColorSpaceCreateLinearITUR_2020;
  v3[58] = @"kCGColorSpaceExtendedITUR_2020";
  v3[59] = CGColorSpaceCreateExtendedITUR_2020;
  v3[60] = @"kCGColorSpaceExtendedLinearITUR_2020";
  v3[61] = CGColorSpaceCreateExtendedLinearITUR_2020;
  v3[62] = @"kCGColorSpaceITUR_2100_PQ";
  v3[63] = CGColorSpaceCreateITUR_2100_PQ;
  v3[64] = @"kCGColorSpaceITUR_2100_HLG";
  v3[65] = CGColorSpaceCreateITUR_2100_HLG;
  v3[66] = @"kCGColorSpaceROMMRGB";
  v3[67] = CGColorSpaceCreateROMMRGB;
  v3[68] = @"kCGColorSpaceDCIP3";
  v3[69] = CGColorSpaceCreateDCIP3;
  v3[70] = @"kCGColorSpaceExtendedSRGB";
  v3[71] = CGColorSpaceExtendedSRGB;
  v3[72] = @"kCGColorSpaceLinearSRGB";
  v3[73] = CGColorSpaceLinearSRGB;
  v3[74] = @"kCGColorSpaceExtendedLinearSRGB";
  v3[75] = CGColorSpaceExtendedLinearSRGB;
  v3[76] = @"kCGColorSpaceExtendedGray";
  v3[77] = CGColorSpaceExtendedGray;
  v3[78] = @"kCGColorSpaceLinearGray";
  v3[79] = CGColorSpaceLinearGray;
  v3[80] = @"kCGColorSpaceExtendedLinearGray";
  v3[81] = CGColorSpaceExtendedLinearGray;
  v3[82] = @"kCGColorSpacePerceptualStandardRGB";
  v3[83] = CGColorSpacePerceptualStandardRGB;
  v3[84] = @"kCGColorSpaceCoreMedia709";
  v3[85] = CGColorSpaceCoreMedia709;
  v3[86] = @"kCGColorSpaceColoredPattern";
  v3[87] = CGColorSpaceCreateColoredPattern;
  v0 = 0;
  CGColorSpaceCreateWithName_name_creator_pair_dict = CFDictionaryCreateMutable(0, 44, MEMORY[0x1E695E9D8], 0);
  do
  {
    CFDictionarySetValue(CGColorSpaceCreateWithName_name_creator_pair_dict, v3[v0], v3[v0 + 1]);
    v0 += 2;
  }

  while (v0 != 88);
  v1 = malloc_type_malloc(0x2C0uLL, 0xE004020B7322BuLL);
  v2 = 0;
  CGColorSpaceCreateWithName_name_creator_pair_array = v1;
  CGColorSpaceCreateWithName_name_creator_pair_count = 1;
  do
  {
    *&v1[v2 * 8] = *&v3[v2];
    v2 += 2;
  }

  while (v2 != 88);

  qsort(v1, 0x2CuLL, 0x10uLL, compare_names);
}

uint64_t (*__color_space_state_create_sRGB_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_sRGB_f = v1;
  return result;
}

uint64_t compare_names(void *a1, void *a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t create_singleton(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v1)
  {
    return 0;
  }

  v9 = v1;
  *(v1 + 8) = 1;
  v10 = CGColorSpaceCreateWithState(v1, v2, v3, v4, v5, v6, v7, v8);
  if (atomic_fetch_add_explicit(v9, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v9);
  }

  return v10;
}

void __CGLibraryLoadColorSyncDYLD_block_invoke()
{
  CGLibraryLoadColorSyncDYLD_handle = dlopen("/System/Library/Frameworks/ColorSync.framework/ColorSync", 5);
  if (!CGLibraryLoadColorSyncDYLD_handle)
  {
    CGPostError("Failed to load %s", v0, v1, v2, v3, v4, v5, v6, "/System/Library/Frameworks/ColorSync.framework/ColorSync");
  }
}

void __CGColorSpaceCreateSRGB_block_invoke()
{
  CGColorSpaceCreateSRGB_space = create_singleton(color_space_state_create_sRGB);
  CGColorSpaceSetProperty(CGColorSpaceCreateSRGB_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateSRGB_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceLinearSRGB");
  CGColorSpaceSetProperty(CGColorSpaceCreateSRGB_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedSRGB");
  v0 = CGColorSpaceCreateSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
}

char *color_space_state_create_sRGB()
{
  if (color_space_state_create_sRGB_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_sRGB_cglibrarypredicate, &__block_literal_global_114);
  }

  v0 = color_space_state_create_sRGB_f;
  if (color_space_state_create_sRGB_cglibrarypredicate_115 != -1)
  {
    dispatch_once(&color_space_state_create_sRGB_cglibrarypredicate_115, &__block_literal_global_118);
  }

  v1 = v0(color_space_state_create_sRGB_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceSRGB";
    *(icc_with_profile + 5) = 15;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1";
  }

  return icc_with_profile;
}

uint64_t __CGColorGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorGetTypeID_class);
  CGColorGetTypeID_color_type_id = result;
  return result;
}

uint64_t __CGColorSpaceCreateDeviceRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_device_rgb);
  CGColorSpaceCreateDeviceRGB_space = result;
  return result;
}

double color_space_state_create_device_rgb()
{
  v0 = malloc_type_calloc(0x78uLL, 1uLL, 0x934B7D4DuLL);
  if (v0)
  {
    *v0 = 1;
    v0[12] = 1;
    *(v0 + 2) = 0x10000;
    *(v0 + 7) = 256;
    *(v0 + 6) = 1;
    *(v0 + 14) = &device_rgb_vtable;
    *(v0 + 28) = 0x100000001;
    *(v0 + 11) = 0;
    *(v0 + 12) = 0;
    *(v0 + 10) = @"kCGColorSpaceDeviceRGB";
    *(v0 + 5) = &device_rgb_get_default_color_components_default_rgb;
    *(v0 + 6) = 3;
    result = 2.51837737e257;
    *(v0 + 4) = xmmword_18439CA40;
  }

  return result;
}

uint64_t __CGColorSpaceGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGColorSpaceGetTypeID_class);
  CGColorSpaceGetTypeID_type_id = result;
  return result;
}

uint64_t __CGTypeRegisterInternal(unsigned int *a1)
{
  v2 = malloc_type_malloc(0x60uLL, 0x10D00408820D60FuLL);
  v3 = *a1;
  *v2 = v3;
  *(v2 + 8) = *(a1 + 2);
  *(v2 + 24) = *(a1 + 6);
  *(v2 + 40) = *(a1 + 10);
  v4 = *(a1 + 7);
  if (!v4)
  {
    v4 = copy_description;
  }

  *(v2 + 7) = v4;
  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = copy_debug_description_23288;
  }

  *(v2 + 8) = v5;
  if ((v3 & 4) != 0)
  {
    v6 = *(a1 + 9);
  }

  else
  {
    v6 = 0;
  }

  *(v2 + 9) = v6;
  if ((v3 & 8) != 0)
  {
    v7 = *(a1 + 10);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + 10) = v7;
  if ((v3 & 0x10) != 0)
  {
    v8 = *(a1 + 11);
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 11) = v8;

  return _CFRuntimeRegisterClass();
}

uint64_t __CGDataProviderGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGDataProviderGetTypeID_runtime_class);
  CGDataProviderGetTypeID_id = result;
  return result;
}

uint64_t (*__color_space_state_create_icc_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileVerify");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_f = v1;
  return result;
}

uint64_t (*__color_space_state_create_icc_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncCreateOutputPoppyProfile");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  color_space_state_create_icc_f_22 = v1;
  return result;
}

void CGColorSpaceSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v6 == CGColorSpaceGetTypeID_type_id)
    {
      pthread_mutex_lock((a1 + 32));
      v7 = *(*(a1 + 24) + 88);
      if (!v7)
      {
        v7 = CGPropertiesCreate();
        *(*(a1 + 24) + 88) = v7;
      }

      CGPropertiesSetProperty(v7, a2, a3);

      pthread_mutex_unlock((a1 + 32));
    }
  }
}

uint64_t CGColorSpaceCreateGenericGrayGamma22()
{
  if (CGColorSpaceCreateGenericGrayGamma22_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericGrayGamma22_predicate, &__block_literal_global_212_6601);
  }

  v0 = CGColorSpaceCreateGenericGrayGamma22_space;
  if (CGColorSpaceCreateGenericGrayGamma22_space)
  {
    CFRetain(CGColorSpaceCreateGenericGrayGamma22_space);
  }

  return v0;
}

void *CGImageProviderGetColorSpace(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[15];
    if (!v2)
    {
      return v1[5];
    }

    result = CGPropertiesGetProperty(v2, @"kCGImageProviderColorSpaceChangedOnImageCopy");
    if (!result)
    {
      return v1[5];
    }
  }

  return result;
}

uint64_t color_transform_create(CGColorSpace *space, const void *a2)
{
  v2 = space;
  if (!space)
  {
    goto LABEL_51;
  }

  Type = CGColorSpaceGetType(space);
  if (Type <= 0xB)
  {
    if (((1 << Type) & 0xC78) != 0)
    {
      CFRetain(v2);
      goto LABEL_12;
    }

    if (Type == 1)
    {
      v5 = @"kCGColorSpaceSRGB";
      goto LABEL_11;
    }

    if (Type == 2)
    {
      v5 = @"kCGColorSpaceGenericCMYK";
      goto LABEL_11;
    }
  }

  if (Type)
  {
    v2 = 0;
    goto LABEL_51;
  }

  v5 = @"kCGColorSpaceGenericGrayGamma2_2";
LABEL_11:
  v2 = CGColorSpaceCreateWithName(v5);
  if (!v2)
  {
LABEL_51:
    CGColorSpaceRelease(v2);
    return 0;
  }

LABEL_12:
  if (!CGColorSpaceSupportsOutput(v2))
  {
    goto LABEL_51;
  }

  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  Instance = CGTypeCreateInstance(CGColorTransformGetTypeID_type_id, 88, v6, v7, v8, v9, v10, v11);
  v13 = Instance;
  *(Instance + 20) = 1;
  *(Instance + 96) = 1;
  if (a2)
  {
    CFRetain(a2);
    *(v13 + 32) = a2;
    v14 = v2;
    v15 = a2;
  }

  else
  {
    *(Instance + 32) = 0;
    v14 = v2;
    v15 = 0;
  }

  *(v13 + 24) = CGColorTransformBaseAcquire(v14, v15);
  *(v13 + 16) = atomic_fetch_add_explicit(color_transform_create_identifier, 1u, memory_order_relaxed) + 1;
  *(v13 + 88) = 0;
  v16 = *(*(v2 + 3) + 48);
  if (v16 <= 4)
  {
    v17 = malloc_type_calloc(1uLL, 0x58uLL, 0x1020040867A26DAuLL);
    *(v13 + 88) = v17;
    LODWORD(v17[1].__sig) = v16;
    *&v17[1].__opaque[8] = 0;
    pthread_mutex_init(v17, 0);
  }

  if (a2)
  {
    *(v13 + 40) = create_default_color_space(a2, @"DefaultGray", 0);
    *(v13 + 48) = create_default_color_space(a2, @"DefaultRGB", 1);
    *(v13 + 56) = create_default_color_space(a2, @"DefaultCMYK", 2);
  }

  if (!*(v13 + 40))
  {
    *(v13 + 40) = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  }

  if (!*(v13 + 48))
  {
    *(v13 + 48) = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  }

  if (!*(v13 + 56))
  {
    *(v13 + 56) = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  }

  if (!*(v13 + 64))
  {
    v18 = *(v13 + 40);
    if (CGColorSpaceGetModel(v2) == kCGColorSpaceModelMonochrome)
    {
      v18 = v2;
    }

    if (v18)
    {
      CFRetain(v18);
    }

    *(v13 + 64) = v18;
  }

  if (!*(v13 + 72))
  {
    v19 = *(v13 + 48);
    if (CGColorSpaceGetModel(v2) == kCGColorSpaceModelRGB)
    {
      v19 = v2;
    }

    if (v19)
    {
      CFRetain(v19);
    }

    *(v13 + 72) = v19;
  }

  if (!*(v13 + 80))
  {
    v20 = *(v13 + 56);
    if (CGColorSpaceGetModel(v2) == kCGColorSpaceModelCMYK)
    {
      v20 = v2;
    }

    if (v20)
    {
      CFRetain(v20);
    }

    *(v13 + 80) = v20;
  }

  CGColorSpaceRelease(v2);
  if (show_log_predicate != -1)
  {
    dispatch_once(&show_log_predicate, &__block_literal_global_61_17658);
  }

  if (show_log_show_log == 1)
  {
    v29 = CGBacktraceCreate(10);
    CGPostError("CGColorTransform %p created. Backtrace:\n%s\n", v21, v22, v23, v24, v25, v26, v27, v13);
    free(v29);
  }

  return v13;
}

uint64_t CGColorTransformBaseAcquire(void *a1, unint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&cacheMutex);
  v10 = base_cache;
  if (base_cache)
  {
    while (1)
    {
      Instance = *v10;
      v12 = *(*v10 + 24);
      if ((!(a2 | v12) || a2 && v12 && CFEqual(a2, v12)) && matches_space(*(Instance + 16), a1))
      {
        break;
      }

      v10 = v10[1];
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    ++*(Instance + 32);
  }

  else
  {
LABEL_8:
    if (_block_invoke_once_4701 != -1)
    {
      dispatch_once(&_block_invoke_once_4701, &__block_literal_global_5_4702);
    }

    Instance = CGTypeCreateInstance(CGColorTransformBaseGetTypeID_type_id, 32, v4, v5, v6, v7, v8, v9);
    if (kCGMD5NULL_block_invoke_once != -1)
    {
      dispatch_once(&kCGMD5NULL_block_invoke_once, &__block_literal_global_8_16753);
    }

    v19 = CGTypeCreateInstance(CGColorTransformCacheGetTypeID_type_id, 112, v13, v14, v15, v16, v17, v18);
    if (a1)
    {
      CFRetain(a1);
    }

    *(v19 + 16) = a1;
    if (a2)
    {
      v20 = CFRetain(a2);
    }

    else
    {
      v20 = 0;
    }

    *(v19 + 40) = v20;
    *(v19 + 49) = CGColorSpaceIgnoresIntent(a1);
    v33.__sig = 0;
    *v33.__opaque = 0;
    pthread_mutexattr_init(&v33);
    pthread_mutexattr_settype(&v33, 2);
    pthread_mutex_init((v19 + 56), &v33);
    pthread_mutexattr_destroy(&v33);
    *(v19 + 120) = 0;
    v21 = a1[3];
    if (v21)
    {
      v22 = (v21 + 64);
    }

    else
    {
      v22 = 0;
    }

    *(v19 + 24) = *v22;
    *(v19 + 48) = 0;
    if (a2)
    {
      *(v19 + 48) = CFDictionaryGetValue(a2, @"kCGColorTransformBlackPointCompensation") == *MEMORY[0x1E695E4D0];
      v23 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
      CC_MD5_Init(v23);
      if (v23)
      {
        CC_MD5_Update(v23, (v19 + 24), 0x10u);
        data = CGCFDictionaryGetMD5Digest(a2, 1u);
        v35 = v24;
        CC_MD5_Update(v23, &data, 0x10u);
        CC_MD5_Final((v19 + 24), v23);
      }

      else
      {
        data = CGCFDictionaryGetMD5Digest(a2, 1u);
        v35 = v26;
      }

      free(v23);
      *(Instance + 16) = v19;
      *(Instance + 32) = 1;
      *(Instance + 40) = 1;
      v25 = CFRetain(a2);
    }

    else
    {
      v25 = 0;
      *(Instance + 16) = v19;
      *(Instance + 32) = 1;
      *(Instance + 40) = 1;
    }

    *(Instance + 24) = v25;
    v27 = base_cache;
    if (base_cache)
    {
      v28 = base_cache;
      do
      {
        v29 = v28;
        v28 = *(v28 + 8);
      }

      while (v28);
      v30 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      if (v30)
      {
        *v30 = Instance;
        v30[1] = 0;
      }

      *(v29 + 8) = v30;
    }

    else
    {
      v31 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      v27 = v31;
      if (v31)
      {
        *v31 = Instance;
        v31[1] = 0;
      }
    }

    base_cache = v27;
  }

  pthread_mutex_unlock(&cacheMutex);
  return Instance;
}

uint64_t CGColorSpaceCreateGenericCMYK()
{
  if (CGColorSpaceCreateGenericCMYK_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericCMYK_predicate, &__block_literal_global_188);
  }

  v0 = CGColorSpaceCreateGenericCMYK_space;
  if (CGColorSpaceCreateGenericCMYK_space)
  {
    CFRetain(CGColorSpaceCreateGenericCMYK_space);
  }

  return v0;
}

float CGColorGetContentHeadroom(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  result = *(a1 + 64);
  if (result == 0.0)
  {
    if (CGColorSpaceContainsFlexGTCInfo(*(a1 + 24)))
    {
      v3 = *(a1 + 24);

      return CGColorSpaceGetHeadroomInfo(v3, 0);
    }

    else
    {
      return *(a1 + 64);
    }
  }

  return result;
}

uint64_t CGColorTransformConvertColorComponents(uint64_t result, void *a2, uint64_t a3, double *a4, double *a5)
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v17 = CFGetTypeID(result);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v17 != CGColorTransformGetTypeID_type_id)
  {
    return 0;
  }

  if (!a4 || !a5)
  {
    CGPostError("%s: NULL components", v10, v11, v12, v13, v14, v15, v16, "CGColorTransformConvertColorComponents");
    return 0;
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 0x40000000;
  v69[2] = __create_resolved_source_space_block_invoke;
  v69[3] = &__block_descriptor_tmp_36_17670;
  v69[4] = v9;
  ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v69);
  if (!CGColorTransformGetAttributes(v9))
  {
    Cache = CGColorTransformGetCache(v9);
    if (Cache)
    {
      v42 = Cache[2];
      if (v42)
      {
        v43 = v42[3];
        if (v43)
        {
          v42 = (v43 + 64);
        }

        else
        {
          v42 = 0;
        }
      }
    }

    else
    {
      v42 = 0;
    }

    if (ResolvedColorSpace)
    {
      v46 = *(ResolvedColorSpace + 3);
      v47 = v46 ? (v46 + 64) : 0;
    }

    else
    {
      v47 = 0;
    }

    if (v42 == v47 || v42 && v47 && ((v49 = *v42, v48 = v42[1], v51 = *v47, v50 = v47[1], v49 == v51) ? (v52 = v48 == v50) : (v52 = 0), v52))
    {
      if (ResolvedColorSpace)
      {
        for (i = *(*(ResolvedColorSpace + 3) + 48); i; --i)
        {
          v54 = *a4++;
          *a5++ = v54;
        }
      }

      goto LABEL_106;
    }
  }

  v19 = CGColorTransformGetCache(v9);
  v20 = v9[11];
  pthread_mutex_lock(v20);
  v21 = *(v20 + 80);
  if (!v21)
  {
LABEL_44:
    pthread_mutex_unlock(v20);
    if (CGColorSpaceGetType(ResolvedColorSpace) - 7 >= 3 && CGColorTransformCacheGetConversionType(v19, ResolvedColorSpace, a3) == 3)
    {
      if (ResolvedColorSpace)
      {
        for (j = *(*(ResolvedColorSpace + 3) + 48); j; --j)
        {
          v40 = *a4++;
          *a5++ = v40;
        }
      }

      goto LABEL_106;
    }

    Converter = CGColorTransformCacheCreateConverter(v19, ResolvedColorSpace, a3);
    if (CGCMSConverterConvertColorComponents(Converter, a4, a5))
    {
      if (ResolvedColorSpace)
      {
        v45 = *(*(ResolvedColorSpace + 3) + 48);
        if (v45 > 4)
        {
LABEL_104:
          if (Converter)
          {
            CFRelease(Converter);
          }

          goto LABEL_106;
        }
      }

      else
      {
        v45 = 0;
      }

      v55 = v9[11];
      pthread_mutex_lock(v55);
      if (*(v55 + 72) > 0x3FuLL)
      {
        v58 = *(v55 + 80);
        if (v58)
        {
          v59 = *(v55 + 80);
          do
          {
            v60 = v59;
            v59 = *(v59 + 8);
          }

          while (v59);
          v56 = *v60;
        }

        else
        {
          v56 = 0;
        }

        v57 = x_list_remove(v58, v56);
        *(v55 + 80) = v57;
      }

      else
      {
        v56 = malloc_type_malloc(0x58uLL, 0x100004038113C5CuLL);
        v57 = *(v55 + 80);
        ++*(v55 + 72);
      }

      v61 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
      if (v61)
      {
        *v61 = v56;
        v61[1] = v57;
        v57 = v61;
      }

      *(v55 + 80) = v57;
      v62 = *(ResolvedColorSpace + 3);
      if (v62)
      {
        v63 = (v62 + 64);
      }

      else
      {
        v63 = 0;
      }

      *v56 = *v63;
      *(v56 + 4) = a3;
      if (v45)
      {
        v64 = v56 + 24;
        do
        {
          v65 = *a4++;
          *v64++ = v65;
          --v45;
        }

        while (v45);
      }

      v66 = *(v55 + 64);
      if (v66)
      {
        v67 = v56 + 56;
        do
        {
          v68 = *a5++;
          *v67++ = v68;
          --v66;
        }

        while (v66);
      }

      pthread_mutex_unlock(v55);
      goto LABEL_104;
    }

    if (Converter)
    {
      CFRelease(Converter);
    }

    CGColorSpaceRelease(ResolvedColorSpace);
    return 0;
  }

  v22 = *(v20 + 80);
  while (1)
  {
    if (ResolvedColorSpace)
    {
      v23 = *(ResolvedColorSpace + 3);
      v24 = (v23 + 64);
      if (!v23)
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *v22;
    if (v24 == *v22 || (v25 ? (v26 = v24 == 0) : (v26 = 1), !v26 && ((v28 = *v24, v27 = v24[1], *v25 == v28) ? (v29 = v25[1] == v27) : (v29 = 0), v29)))
    {
      if (*(v25 + 4) == a3)
      {
        if (!ResolvedColorSpace)
        {
          goto LABEL_34;
        }

        v30 = *(*(ResolvedColorSpace + 3) + 48);
        if (v30 <= 4)
        {
          break;
        }
      }
    }

LABEL_28:
    v22 = v22[1];
    if (!v22)
    {
      goto LABEL_44;
    }
  }

  if (v30)
  {
    v31 = (v25 + 3);
    v32 = a4;
    while (*v31 == *v32)
    {
      ++v32;
      ++v31;
      if (!--v30)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_28;
  }

LABEL_34:
  v33 = *(v20 + 64);
  if (v33)
  {
    v34 = v25 + 7;
    do
    {
      v35 = *v34++;
      *a5++ = v35;
      --v33;
    }

    while (v33);
  }

  v69[0] = v21;
  if (*v21 == v25)
  {
    v38 = v69;
LABEL_81:
    *v38 = v21[1];
    v21[1] = v69[0];
  }

  else
  {
    v36 = v21;
    while (1)
    {
      v37 = v36;
      v36 = v36[1];
      if (!v36)
      {
        break;
      }

      if (*v36 == v25)
      {
        v38 = v37 + 1;
        v21 = v36;
        goto LABEL_81;
      }
    }
  }

  *(v20 + 80) = v21;
  pthread_mutex_unlock(v20);
LABEL_106:
  CGColorSpaceRelease(ResolvedColorSpace);
  return 1;
}

CGColorSpaceRef __create_resolved_source_space_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  Type = CGColorSpaceGetType(a2);
  if (Type > 0xB)
  {
    goto LABEL_11;
  }

  if (((1 << Type) & 0xC58) == 0)
  {
    if (Type == 1)
    {
      IsUncalibrated = CGColorSpaceIsUncalibrated(v2);
      v12 = *(a1 + 32);
      if (IsUncalibrated)
      {
        if (!v12)
        {
          return 0;
        }

        v2 = *(v12 + 72);
      }

      else
      {
        if (!v12)
        {
          return 0;
        }

        v2 = *(v12 + 48);
      }

      goto LABEL_24;
    }

    if (Type == 2)
    {
      v7 = CGColorSpaceIsUncalibrated(v2);
      v8 = *(a1 + 32);
      if (v7)
      {
        if (v8)
        {
          v2 = *(v8 + 80);
          goto LABEL_24;
        }

        return 0;
      }

      if (!v8)
      {
        return 0;
      }

      v2 = *(v8 + 56);
      goto LABEL_24;
    }

LABEL_11:
    if (!Type)
    {
      v9 = CGColorSpaceIsUncalibrated(v2);
      v10 = *(a1 + 32);
      if (v9)
      {
        if (!v10)
        {
          return 0;
        }

        v2 = *(v10 + 64);
      }

      else
      {
        if (!v10)
        {
          return 0;
        }

        v2 = *(v10 + 40);
      }
    }

LABEL_24:
    if (v2)
    {
      CFRetain(v2);
    }

    return v2;
  }

  v5 = *(*(a1 + 32) + 96);

  return create_calibrated_space(v2, v5);
}

uint64_t CGColorTransformGetAttributes(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  if (v2 == CGColorTransformGetTypeID_type_id)
  {
    return a1[4];
  }

  else
  {
    return 0;
  }
}

CGColorSpaceRef create_calibrated_space(void *cf, int a2)
{
  if (a2)
  {
    if (cf)
    {
      CFRetain(cf);
    }

    return cf;
  }

  Type = CGColorSpaceGetType(cf);
  if (Type > 9)
  {
    if ((Type - 10) >= 2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (Type == 3)
    {
LABEL_14:

      return CGColorSpaceCreateDeviceGray();
    }

    if (Type == 4)
    {
      goto LABEL_17;
    }

    if (Type != 6)
    {
LABEL_23:
      _CGHandleAssert("create_calibrated_space", 364, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransform.c", "", "Unimplemented", v5, v6, v7, v9);
    }
  }

  Model = CGColorSpaceGetModel(cf);
  if (Model != kCGColorSpaceModelCMYK)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      if (Model)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

LABEL_17:

    return CGColorSpaceCreateDeviceRGB();
  }

  return CGColorSpaceCreateDeviceCMYK();
}

uint64_t icc_get_default_color_components(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 16) <= 0xFFFFFFFFFFFFFFF0)
  {
    _CGHandleAssert("icc_get_default_color_components", 126, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "component_count > 0 && component_count <= kCGColorSpaceICCMaxComponents", "Colorspace component count unhandled. count = %zu", a6, a7, a8, a1);
  }

  return *(&icc_get_default_color_components_components + a1 - 1);
}

CGDataProviderRef CGDataProviderCreateWithCFData(CGDataProviderRef data)
{
  if (data)
  {
    v1 = data;
    data = CFDataGetBytePtr(data);
    if (data)
    {
      Length = CFDataGetLength(v1);
      v3 = CFRetain(v1);
      *&callbacks.version = 0;
      callbacks.getBytePointer = getCFDataBytePointer;
      callbacks.releaseBytePointer = 0;
      callbacks.getBytesAtPosition = cf_get_bytes_at_position;
      callbacks.releaseInfo = releaseCFData;
      return CGDataProviderCreateDirect(v3, Length, &callbacks);
    }
  }

  return data;
}

uint64_t CGColorSpaceCreateWithState(atomic_uint *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  Instance = CGTypeCreateInstance(CGColorSpaceGetTypeID_type_id, 80, a3, a4, a5, a6, a7, a8);
  v10 = Instance;
  if (Instance)
  {
    pthread_mutex_init((Instance + 32), 0);
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    *(v10 + 24) = a1;
    *(v10 + 16) = 1;
  }

  return v10;
}

uint64_t CGColorSpaceExtendedSRGB()
{
  if (CGColorSpaceExtendedSRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceExtendedSRGB_predicate, &__block_literal_global_276_6559);
  }

  v0 = CGColorSpaceExtendedSRGB_space;
  if (CGColorSpaceExtendedSRGB_space)
  {
    CFRetain(CGColorSpaceExtendedSRGB_space);
  }

  return v0;
}

void CGCMSUtilsGetICCProfileInfo(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return;
  }

  if (!a1)
  {
    _CGHandleAssert("CGCMSUtilsGetICCProfileInfo", 76, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSUtils.c", "profile != NULL", "profile missing", a6, a7, a8, v44);
  }

  if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate != -1)
  {
    dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate, &__block_literal_global_1545);
  }

  *(a2 + 4) = CGCMSUtilsGetICCProfileInfo_f(a1);
  *(a2 + 12) = v11;
  if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_8 != -1)
  {
    dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_8, &__block_literal_global_11);
  }

  ICCProfileInfo_f_7 = CGCMSUtilsGetICCProfileInfo_f_7(a1);
  if (!ICCProfileInfo_f_7)
  {
    return;
  }

  v13 = ICCProfileInfo_f_7;
  *(a2 + 282) = 0;
  BytePtr = CFDataGetBytePtr(ICCProfileInfo_f_7);
  v18 = BytePtr;
  v19 = *(BytePtr + 4);
  if (v19 > 1213421087)
  {
    if (v19 > 1296255030)
    {
      if (v19 <= 1380401695)
      {
        if (v19 == 1296255031)
        {
          goto LABEL_45;
        }

        if (v19 != 1296255032)
        {
          goto LABEL_51;
        }

        goto LABEL_43;
      }

      if (v19 != 1501067552)
      {
        if (v19 == 1482250784)
        {
          v20 = 1;
          v22 = 7;
        }

        else
        {
          if (v19 != 1380401696)
          {
            goto LABEL_51;
          }

          v20 = 0;
          v22 = 1;
        }

        v23 = 3;
        goto LABEL_49;
      }
    }

    else if (v19 <= 1282766367)
    {
      if (v19 != 1213421088)
      {
        if (v19 == 1281450528)
        {
          v20 = 0;
          v21 = 0;
          v22 = 3;
LABEL_40:
          v23 = 3;
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    else if (v19 != 1282766368)
    {
      if (v19 == 1296255029)
      {
        goto LABEL_44;
      }

      if (v19 == 1296255030)
      {
        goto LABEL_20;
      }

      goto LABEL_51;
    }

LABEL_39:
    v20 = 0;
    v21 = 0;
    v22 = 4;
    goto LABEL_40;
  }

  if (v19 <= 943934545)
  {
    if (v19 > 893602897)
    {
      if (v19 != 893602898)
      {
        if (v19 != 910380114)
        {
          if (v19 != 927157330)
          {
            goto LABEL_51;
          }

LABEL_45:
          v20 = 0;
          v21 = 0;
          v22 = 4;
          v23 = 7;
          goto LABEL_52;
        }

LABEL_20:
        v20 = 0;
        v21 = 0;
        v22 = 4;
        v23 = 6;
        goto LABEL_52;
      }

LABEL_44:
      v20 = 0;
      v21 = 0;
      v22 = 4;
      v23 = 5;
      goto LABEL_52;
    }

    if (v19 != 860048466)
    {
      if (v19 == 876825682)
      {
        v20 = 0;
        v21 = 0;
        v23 = 4;
        v22 = 4;
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    goto LABEL_39;
  }

  if (v19 > 1129142602)
  {
    if (v19 == 1129142603)
    {
      v20 = 0;
      v21 = 0;
      v22 = 2;
      v23 = 4;
      goto LABEL_52;
    }

    if (v19 != 1196573017)
    {
      v24 = 1212961568;
      goto LABEL_38;
    }

    v22 = 0;
    v20 = 0;
    v23 = 1;
LABEL_49:
    v21 = 1;
    goto LABEL_52;
  }

  if (v19 == 943934546)
  {
LABEL_43:
    v20 = 0;
    v21 = 0;
    v22 = 4;
    v23 = 8;
    goto LABEL_52;
  }

  v24 = 1129142560;
LABEL_38:
  if (v19 == v24)
  {
    goto LABEL_39;
  }

LABEL_51:
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 4;
LABEL_52:
  *a2 = v22;
  *(a2 + 288) = v23;
  v25 = *(BytePtr + 3);
  if (v25 > 1886549105)
  {
    if (v25 == 1886549106 || v25 == 1936744803)
    {
LABEL_90:
      *(a2 + 280) = 1;
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_32 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_32, &__block_literal_global_35);
      }

      if (CGCMSUtilsGetICCProfileInfo_f_31(a1))
      {
        ICCProfileInfo_f_37 = 1;
      }

      else
      {
        if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_38 != -1)
        {
          dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_38, &__block_literal_global_41);
        }

        ICCProfileInfo_f_37 = CGCMSUtilsGetICCProfileInfo_f_37(a1, @"aapy");
      }

      *(a2 + 282) = ICCProfileInfo_f_37;
      goto LABEL_98;
    }

LABEL_65:
    if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_45 != -1)
    {
      dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_45, &__block_literal_global_48_1547);
    }

    if (CGCMSUtilsGetICCProfileInfo_f_44(a1))
    {
      *(a2 + 286) = 1;
      *(a2 + 280) = 1;
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_50 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_50, &__block_literal_global_53);
      }

      *(a2 + 283) = CGCMSUtilsGetICCProfileInfo_f_49(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_55 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_55, &__block_literal_global_58_1548);
      }

      *(a2 + 284) = CGCMSUtilsGetICCProfileInfo_f_54(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_60 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_60, &__block_literal_global_63);
      }

      *(a2 + 282) = CGCMSUtilsGetICCProfileInfo_f_59(a1);
      v21 = (*(a2 + 283) & 1) == 0 && *(a2 + 284) == 0;
    }

    else
    {
      if (profile_can_be_used_as_destination_cglibrarypredicate != -1)
      {
        dispatch_once(&profile_can_be_used_as_destination_cglibrarypredicate, &__block_literal_global_463);
      }

      v27 = profile_can_be_used_as_destination_f;
      if (profile_can_be_used_as_destination_cglibrarypredicate_464 != -1)
      {
        dispatch_once(&profile_can_be_used_as_destination_cglibrarypredicate_464, &__block_literal_global_467);
      }

      v28 = v27(profile_can_be_used_as_destination_s);
      if (v28)
      {
        v29 = v28;
        v45 = v20;
        *keys = xmmword_1E6E066A8;
        v50 = @"ColorSyncTransformTag";
        values[0] = v28;
        values[1] = @"ColorSyncRenderingIntentPerceptual";
        values[2] = @"ColorSyncTransformDeviceToPCS";
        v47[0] = a1;
        v47[1] = @"ColorSyncRenderingIntentPerceptual";
        v47[2] = @"ColorSyncTransformPCSToDevice";
        v30 = MEMORY[0x1E695E9D8];
        v31 = MEMORY[0x1E695E9E8];
        v32 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(v29);
        v33 = CFDictionaryCreate(0, keys, v47, 3, v30, v31);
        v46[0] = v32;
        v46[1] = v33;
        v46[2] = 0;
        v34 = CFArrayCreate(0, v46, 2, MEMORY[0x1E695E9C0]);
        Retained = CGColorSyncTransformCacheGetRetained(v34, 0);
        if (v32)
        {
          CFRelease(v32);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        if (v34)
        {
          CFRelease(v34);
        }

        v36 = Retained != 0;
        CGColorSyncTransformCacheRelease(Retained);
        v20 = v45;
      }

      else
      {
        v36 = 0;
      }

      *(a2 + 280) = v36;
    }

    goto LABEL_98;
  }

  if (v25 != 1818848875)
  {
    if (v25 == 1835955314)
    {
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_14 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_14, &__block_literal_global_17);
      }

      *(a2 + 283) = CGCMSUtilsGetICCProfileInfo_f_13(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_20 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_20, &__block_literal_global_23);
      }

      *(a2 + 284) = CGCMSUtilsGetICCProfileInfo_f_19(a1);
      if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_26 != -1)
      {
        dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_26, &__block_literal_global_29);
      }

      ICCProfileInfo_f_25 = CGCMSUtilsGetICCProfileInfo_f_25(a1);
      *(a2 + 286) = ICCProfileInfo_f_25;
      if (*(a2 + 283))
      {
        v21 = 0;
      }

      else
      {
        v21 = (*(a2 + 284) == 0) & ICCProfileInfo_f_25;
      }

      goto LABEL_90;
    }

    goto LABEL_65;
  }

  *(a2 + 280) = 0;
LABEL_98:
  if (v20)
  {
    ICCProfileInfo_f_64 = 1;
  }

  else
  {
    if (CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_65 != -1)
    {
      dispatch_once(&CGCMSUtilsGetICCProfileInfo_cglibrarypredicate_65, &__block_literal_global_68);
    }

    ICCProfileInfo_f_64 = CGCMSUtilsGetICCProfileInfo_f_64(a1);
  }

  *(a2 + 281) = ICCProfileInfo_f_64;
  *(a2 + 285) = a3 & v21;
  v39 = *(a2 + 288);
  if (v39)
  {
    v40 = 0;
    v41 = a2 + 24;
    v42 = *(v18 + 4);
    do
    {
      while (v42 != 1281450528)
      {
        v43 = v40 + 1;
        if (a3 & v21)
        {
          *(v41 + 16 * v40++) = xmmword_18439C7C0;
          if (v43 == v39)
          {
            goto LABEL_115;
          }
        }

        else
        {
          *(v41 + 16 * v40++) = xmmword_18439C780;
          if (v43 == v39)
          {
            goto LABEL_117;
          }
        }
      }

      if (v40 >= 3)
      {
        _CGHandleAssert("CGCMSUtilsGetICCProfileInfo", 196, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGCMSUtils.c", "k < 3", "component %zu too large", v15, v16, v17, v40);
      }

      *(v41 + 16 * v40) = vcvtq_f64_f32(CGCMSUtilsGetICCProfileInfo_range[v40 + 2]);
      ++v40;
    }

    while (v40 != v39);
  }

  if (a3 & v21)
  {
LABEL_115:
    if (*a2 == 1)
    {
      *(a2 + 282) = 1;
    }
  }

LABEL_117:
  CFRelease(v13);
}

void __CGColorSpaceExtendedSRGB_block_invoke()
{
  CGColorSpaceExtendedSRGB_space = create_singleton(color_space_state_create_extended_srgb);
  CGColorSpaceSetProperty(CGColorSpaceExtendedSRGB_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceSRGB");
  CGColorSpaceSetProperty(CGColorSpaceExtendedSRGB_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
  CGColorSpaceSetProperty(CGColorSpaceExtendedSRGB_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedSRGB_space);
  v0 = CGColorSpaceExtendedSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
}

char *color_space_state_create_extended_srgb()
{
  if (color_space_state_create_extended_srgb_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_extended_srgb_cglibrarypredicate, &__block_literal_global_262_1828);
  }

  v0 = color_space_state_create_extended_srgb_f;
  if (color_space_state_create_extended_srgb_cglibrarypredicate_263 != -1)
  {
    dispatch_once(&color_space_state_create_extended_srgb_cglibrarypredicate_263, &__block_literal_global_266);
  }

  v1 = v0(color_space_state_create_extended_srgb_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 1, v2, v3, v4, v5, v6, v7);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedSRGB";
    *(icc_with_profile + 5) = 16;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_extended_srgb_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_extended_srgb_f = v1;
  return result;
}

uint64_t *__color_space_state_create_extended_srgb_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncSRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_extended_srgb_s = v1;
  return result;
}

CGColorSpaceRef CGColorSpaceCreateDeviceRGB(void)
{
  if (CGColorSpaceCreateDeviceRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDeviceRGB_predicate, &__block_literal_global_145_6535);
  }

  v0 = CGColorSpaceCreateDeviceRGB_space;
  if (CGColorSpaceCreateDeviceRGB_space)
  {
    CFRetain(CGColorSpaceCreateDeviceRGB_space);
  }

  return v0;
}

CGRect CGRectStandardize(CGRect rect)
{
  y = rect.origin.y;
  v2 = INFINITY;
  if (rect.origin.x == INFINITY || y == INFINITY)
  {
    rect.size.height = 0.0;
    rect.size.width = 0.0;
    rect.origin.x = INFINITY;
  }

  else
  {
    v4 = rect.origin.x + rect.size.width;
    if (rect.size.width < 0.0)
    {
      rect.size.width = -rect.size.width;
      rect.origin.x = v4;
    }

    v5 = y + rect.size.height;
    if (rect.size.height >= 0.0)
    {
      v2 = y;
    }

    else
    {
      rect.size.height = -rect.size.height;
      v2 = v5;
    }
  }

  rect.origin.y = v2;
  return rect;
}

void *CGImageGetMask(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[22];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t color_transform_retain_count(uint64_t a1, atomic_uint *a2)
{
  switch(a1)
  {
    case -1:
      log_refcount(a2);
      if (atomic_fetch_add_explicit(a2 + 5, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        color_transform_finalize(a2);
        v4 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v4, a2);
      }

      break;
    case 0:
      return a2[5];
    case 1:
      log_refcount(a2);
      return atomic_fetch_add_explicit(a2 + 5, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

void log_refcount(char a1)
{
  if (show_log_predicate != -1)
  {
    dispatch_once(&show_log_predicate, &__block_literal_global_61_17658);
  }

  if (show_log_show_log == 1)
  {
    v9 = CGBacktraceCreate(10);
    CGPostError("CGColorTransform %p. Refcount = %d operation = %ld Backtrace:\n%s\n", v2, v3, v4, v5, v6, v7, v8, a1);

    free(v9);
  }
}

CGContextRef CGBitmapContextCreateWithData(void *data, size_t width, size_t height, size_t bitsPerComponent, size_t bytesPerRow, CGColorSpaceRef space, uint32_t bitmapInfo, CGBitmapContextReleaseDataCallback releaseCallback, void *releaseInfo)
{
  if (space)
  {
    v10 = *(*(space + 3) + 48);
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 * bitsPerComponent;
  if ((bitmapInfo & 0x1F) != 0 && (bitmapInfo & 0x1F) != 7)
  {
    ++v10;
  }

  v13 = 32;
  if ((bitmapInfo & 0xF0000) != 0x40000)
  {
    v13 = v12;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  v14 = v10 * bitsPerComponent;
  v15 = bitmapInfo | 0x10000;
  if ((bitmapInfo & 0xF0000) != 0)
  {
    v15 = bitmapInfo;
  }

  if (bitsPerComponent == 5)
  {
    v14 = 16;
  }

  else
  {
    v15 = bitmapInfo;
  }

  if (bitsPerComponent == 10)
  {
    v14 = v13;
    v16 = bitmapInfo;
  }

  else
  {
    v16 = v15;
  }

  if (bitsPerComponent)
  {
    v12 = v14;
    v17 = v16;
  }

  else
  {
    v17 = bitmapInfo;
  }

  result = CGBitmapContextInfoCreate(data, 0, 0, width, height, bitsPerComponent, v12, bytesPerRow, 72.0, 72.0, space, v17, 0, releaseCallback, releaseInfo);
  if (result)
  {

    return bitmap_context_create(result, 0, "CGBitmapContextCreateWithData", v19, v20, v21, v22, v23);
  }

  return result;
}

void *bitmap_context_create(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = CGContextCreateWithDelegateAndInfo(0, 4, 0, 0, a1, bitmap_context_finalize, a7, a8);
  v19 = v11;
  if (v11)
  {
    v20 = *(v11 + 112);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = 432.0;
    if (v21 <= 432.0)
    {
      v23 = *(a1 + 48);
    }

    if (v21 >= 72.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 72.0;
    }

    v25 = 432.0;
    if (v22 <= 432.0)
    {
      v25 = *(a1 + 56);
    }

    if (v22 >= 72.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 72.0;
    }

    *(v20 + 8) = v24;
    *(v20 + 16) = v26;
    v27 = *(a1 + 96);
    v28 = v27 | ~(-1 << -__clz(v27));
    if (v27 >= 2)
    {
      LOBYTE(v27) = v28;
    }

    *(v20 + 4) = v27 & 3;
    v29 = bitmap_context_delegate_create(a1, a2);
    v19[5] = v29;
    if (v29)
    {
      ColorSpace = CGContextGetColorSpace(v19, v30, v31, v32, v33, v34, v35, v36);
      v38 = 0.0;
      if (ColorSpace)
      {
        v39 = ColorSpace;
        if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
        {
          v38 = 1.0;
          if (!CGColorSpaceIsSDR(v39))
          {
            HeadroomInfo = CGColorSpaceGetHeadroomInfo(v39, 0);
            v41 = 1.0;
            if (HeadroomInfo >= 1.0 || HeadroomInfo <= 0.0)
            {
              v41 = HeadroomInfo;
            }

            if (HeadroomInfo >= 0.0)
            {
              v38 = v41;
            }

            else
            {
              v38 = 0.0;
            }
          }
        }
      }

      CGGStateSetEDRTargetHeadroom(v19[12], v38);
    }

    else
    {
      CGPostError("%s: failed to create delegate.", v30, v31, v32, v33, v34, v35, v36, a3);
      CFRelease(v19);
      return 0;
    }
  }

  else
  {
    CGPostError("%s: failed to create bitmap context.", v12, v13, v14, v15, v16, v17, v18, a3);
    CGBitmapContextInfoRelease(a1);
  }

  return v19;
}

CFTypeRef __CGBitmapContextDelegateCreate(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = 0;
  v9 = *(a1 + 24);
  v10 = *(a1 + 28);
  v56 = __PAIR64__(v10, v9);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  if (v11 >> 31)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 >> 31 == 0;
  }

  if (!v13 || ((v57 = *(a1 + 8), v58 = v12, v9 <= (v11 ^ 0x7FFFFFFF)) ? (v14 = v10 <= (v12 ^ 0x7FFFFFFF)) : (v14 = 0), !v14 || *(a1 + 88) >> 31))
  {
    v54 = v9;
    v40 = "Unsupported dimensions - %d x, %d y, %lu width, %lu height, %lu bytes-per-row";
LABEL_22:
    CGPostError(v40, a2, a3, a4, a5, a6, a7, a8, v54);
    return 0;
  }

  v16 = RIPGetLayerFormat(a1, &v59);
  v24 = RIPGetDepthForLayerFormat(v16, v17, v18, v19, v20, v21, v22, v23);
  if (!v24)
  {
    v42 = *(a1 + 32);
    if (v42)
    {
      v42 = *(*(v42 + 24) + 48);
    }

    CGPostError("Unsupported pixel description - %lu components, %lu bits-per-component, %lu bits-per-pixel", v25, v26, v27, v28, v29, v30, v31, v42);
    return 0;
  }

  v32 = v24;
  v33 = ripc_Initialize();
  if (!v33)
  {
    v40 = "Failed to create bitmap context delegate";
    goto LABEL_22;
  }

  v34 = v33;
  if (v59)
  {
    v35 = 17;
  }

  else
  {
    v35 = 16;
  }

  v36 = *(a1 + 64);
  if (v36 && (v37 = *(a1 + 88)) != 0)
  {
    if (*(a1 + 128))
    {
      v38 = *(a1 + 136);
      v39 = *(a1 + 120);
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v43 = RIPLayerCreateWithData(&v56, v35 | 2, v32, v37, v36, v38, v39, *(a1 + 96));
  }

  else
  {
    v43 = RIPLayerCreate(RIPLayer_ripl_class, &v56, v35, v32, *(a1 + 96), a6, a7, a8);
  }

  *(v34 + 6) = v43;
  if (!v43)
  {
    if (*v34)
    {
      CFRelease(*v34);
    }

    v40 = "Unable to create bitmap delegate device";
    goto LABEL_22;
  }

  v44 = *(a1 + 32);
  if (!v44)
  {
    v46 = *(v34 + 25);
    if (!v46)
    {
      *(v34 + 2) = 0;
      goto LABEL_45;
    }

    CFRetain(*(v34 + 25));
    *(v34 + 2) = v46;
LABEL_41:
    v55 = 0x3FF0000000000000;
    if (CGCFDictionaryGetFloat(a2, @"kCGContextDeviceScale", &v55))
    {
      *(v34 + 5) = v55;
    }

    *(v34 + 24) = *(a1 + 48);
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    *(v34 + 1) = a1;
    *(v34 + 54) = ripc_component_type_from_info(a1, v47, v48, v49, v50, v51, v52, v53);
    return *v34;
  }

  v45 = color_transform_create(v44, a2);
  *(v34 + 2) = v45;
  if (v45)
  {
    goto LABEL_41;
  }

LABEL_45:
  CGPostError("Failed to create bitmap context color transform", a2, a3, a4, a5, a6, a7, a8, v54);
  result = *v34;
  if (*v34)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t validate_rgb_bitmap_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 80);
  if (v8 <= 9)
  {
    if (v8 == 5)
    {
      if ((*(a1 + 40) & 0xF0000) != 0x10000)
      {
        goto LABEL_45;
      }

      if ((*(a1 + 40) & 0x1F) != 6)
      {
        goto LABEL_45;
      }

      v10 = 8;
      v11 = 2;
      v20 = *(a1 + 40) & 0x7000;
      if (v20)
      {
        if (v20 != 4096 && v20 != 12288)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      if (v8 != 8)
      {
        goto LABEL_45;
      }

      v14 = *(a1 + 40);
      if ((v14 & 0xF0000) != 0)
      {
        goto LABEL_45;
      }

      if ((*(a1 + 40) & 0x1Fu) > 6 || ((1 << (v14 & 0x1F)) & 0x66) == 0)
      {
        goto LABEL_45;
      }

      v10 = 0;
      v11 = 4;
      v16 = *(a1 + 40) & 0x7000;
      if (v16)
      {
        if (v16 != 0x2000 && v16 != 0x4000)
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    switch(v8)
    {
      case 10:
        v17 = *(a1 + 40);
        if ((v17 & 0xF0000) != 0x40000 || (v17 & 0x1F) != 0 || (*(a1 + 40) & 0x7000) != 0x2000)
        {
          goto LABEL_45;
        }

        v10 = *(a1 + 128);
        v11 = 4;
        break;
      case 16:
        v18 = *(a1 + 40);
        if ((v18 & 0xF0000) != 0 || (v18 & 0x1B | 4) != 5)
        {
          goto LABEL_45;
        }

        v19 = *(a1 + 40) & 0x7000;
        if ((v18 & 0x100) != 0)
        {
          if (v19 != 4096)
          {
            v13 = "Valid parameters for RGB color space model are:\n\t16  bits per pixel,\t\t 5  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t32  bits per pixel,\t\t 10 bits per component,\t\t kCGImageAlphaNone|kCGImagePixelFormatRGBCIF10|kCGImageByteOrder32Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents\nrequired byte order flag is kCGBitmapByteOrder16Little";
            goto LABEL_46;
          }

          v10 = 0;
          v11 = 8;
        }

        else
        {
          v10 = 0;
          v11 = 8;
          if (v19 && v19 != 4096 && v19 != 12288)
          {
            v13 = "Valid parameters for RGB color space model are:\n\t16  bits per pixel,\t\t 5  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t32  bits per pixel,\t\t 10 bits per component,\t\t kCGImageAlphaNone|kCGImagePixelFormatRGBCIF10|kCGImageByteOrder32Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents\nvalid byte order flags are kCGBitmapByteOrderDefault, kCGBitmapByteOrder16Big, kCGBitmapByteOrder16Little";
            goto LABEL_46;
          }
        }

        break;
      case 32:
        v9 = *(a1 + 40);
        if ((v9 & 0xF0000) != 0 || (v9 & 0x100) == 0 || (v9 & 0x1B | 4) != 5)
        {
          goto LABEL_45;
        }

        v10 = 0;
        v11 = 16;
        v12 = *(a1 + 40) & 0x7000;
        if (v12 && v12 != 0x2000 && v12 != 0x4000)
        {
          v13 = "Valid parameters for RGB color space model are:\n\t16  bits per pixel,\t\t 5  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t32  bits per pixel,\t\t 10 bits per component,\t\t kCGImageAlphaNone|kCGImagePixelFormatRGBCIF10|kCGImageByteOrder32Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents\nvalid byte order flags are kCGBitmapByteOrderDefault, kCGBitmapByteOrder32Big, kCGBitmapByteOrder32Little";
LABEL_46:
          unsupported(a1, v13, a3, a4, a5, a6, a7, a8);
          return 0;
        }

        break;
      default:
        goto LABEL_45;
    }
  }

  if (*(a1 + 72) != 8 * v11)
  {
LABEL_45:
    v13 = "Valid parameters for RGB color space model are:\n\t16  bits per pixel,\t\t 5  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedFirst\n\t32  bits per pixel,\t\t 8  bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t32  bits per pixel,\t\t 10 bits per component,\t\t kCGImageAlphaNone|kCGImagePixelFormatRGBCIF10|kCGImageByteOrder32Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t64  bits per pixel,\t\t 16 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents|kCGImageByteOrder16Little\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaPremultipliedLast|kCGBitmapFloatComponents\n\t128 bits per pixel,\t\t 32 bits per component,\t\t kCGImageAlphaNoneSkipLast|kCGBitmapFloatComponents";
    goto LABEL_46;
  }

  if ((*(a1 + 88) & (v11 - 1)) != 0)
  {
    CGPostError("\nCGBitmapContextCreate: unsupported parameter combination:\n\t%zu %% %zu!= 0; bytes per row must be a multiple of bytes per pixel", v10, a3, a4, a5, a6, a7, a8, *(a1 + 88));
    return 0;
  }

  return check_sizes(a1, v10, a3, a4, a5, a6, a7, a8);
}

uint64_t bitmap_context_delegate_create(uint64_t a1, uint64_t a2)
{
  if (bitmap_context_delegate_create_once != -1)
  {
    dispatch_once_f(&bitmap_context_delegate_create_once, 0, load_bitmap_context_delegate_create);
  }

  v4 = creator;
  if (!creator)
  {
    return 0;
  }

  return v4(a1, a2);
}

BOOL matches_space(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = v2[3];
      if (v3)
      {
        v2 = (v3 + 64);
      }

      else
      {
        v2 = 0;
      }
    }

    if (a2)
    {
      goto LABEL_7;
    }

LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v2 = 0;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_7:
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = 0;
  }

LABEL_12:
  if (v2 == v5)
  {
    return 1;
  }

  result = 0;
  if (v2 && v5)
  {
    v8 = *v2;
    v7 = v2[1];
    v10 = *v5;
    v9 = v5[1];
    return v8 == v10 && v7 == v9;
  }

  return result;
}

char *ripc_Initialize()
{
  v0 = malloc_type_calloc(1uLL, 0xE0uLL, 0x10600404AF495FBuLL);
  *v0 = CGContextDelegateCreate(v0, v1, v2, v3, v4, v5, v6, v7);
  v8 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
  *v8 = &ripc_class;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 39) = 1065353216;
  *(v0 + 22) = v8;
  v9 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
  *v9 = &ripc_class;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
  *(v9 + 39) = 1065353216;
  *(v0 + 23) = v9;
  v10 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
  *v10 = &ripc_class;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  *(v10 + 39) = 1065353216;
  *(v0 + 24) = v10;
  *(v0 + 32) = -1;
  *(v0 + 7) = 0;
  *(v0 + 8) = 0;
  *(v0 + 24) = vdupq_n_s64(0x4052000000000000uLL);
  *(v0 + 5) = 0x3FF0000000000000;
  if (create_default_transform_predicate != -1)
  {
    dispatch_once(&create_default_transform_predicate, &__block_literal_global_7_14240);
  }

  v11 = create_default_transform_transform;
  if (create_default_transform_transform)
  {
    CFRetain(create_default_transform_transform);
  }

  *(v0 + 25) = v11;
  v12 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004062D53EE8uLL);
  *v12 = v12;
  v12[1] = v12;
  *(v0 + 26) = v12;
  CGContextDelegateSetCallbacks(*v0, &ripc_Initialize_callbacks, 20, v13, v14, v15, v16, v17);
  pthread_mutex_lock(&contexts_mutex);
  v18 = contexts;
  v19 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
  if (v19)
  {
    *v19 = v0;
    v19[1] = v18;
    v18 = v19;
  }

  contexts = v18;
  pthread_mutex_unlock(&contexts_mutex);
  return v0;
}

uint64_t initialize_deep_mask(int *a1)
{
  if (initialize_deep_mask_predicate != -1)
  {
    dispatch_once(&initialize_deep_mask_predicate, &__block_literal_global_18693);
  }

  v2 = *a1;
  if (*a1 == 134755160 || v2 == 269497256)
  {
    return 256;
  }

  if (v2 != 269497257)
  {
    return 0;
  }

  if (initialize_deep_mask_fp16_deep_mask_on)
  {
    return 256;
  }

  return 0;
}

void *ripc_InitializeColorTransform(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(*result + 80))(result, a1 + 16);
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  if (*(a1 + 120) != v4 || *(a1 + 132) != v3)
  {
    *(a1 + 120) = v4;
    *(a1 + 132) = v3;
    if ((CGColorTransformGetMD5(v4, a1 + 136) & 1) == 0)
    {
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
    }

    Cache = CGColorTransformGetCache(v4);
    if (Cache)
    {
      Cache = *(Cache + 2);
    }

    *(a1 + 128) = CGColorSpaceGetModel(Cache);
    free(*(a1 + 176));
    v6 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
    *v6 = &ripc_class;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    *(v6 + 39) = 1065353216;
    *(a1 + 176) = v6;
    *(v6 + 5) = v3;
    free(*(a1 + 184));
    v7 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
    *v7 = &ripc_class;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    *(v7 + 39) = 1065353216;
    *(a1 + 184) = v7;
    *(v7 + 5) = v3;
    free(*(a1 + 192));
    result = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
    *result = &ripc_class;
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *(result + 39) = 1065353216;
    *(a1 + 192) = result;
    *(result + 5) = v3;
  }

  return result;
}

uint64_t ripl_Transform(uint64_t a1, uint64_t a2)
{
  if (a2 && *a2)
  {
    return *(*a2 + 16);
  }

  else
  {
    return 0;
  }
}

void CGDisplayListDrawInContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && *(a2 + 16) == 1129601108)
  {
    CGDisplayListDrawInContextDelegate(a1, *(a2 + 40), *(a2 + 112), *(a2 + 96), 0);
  }

  else
  {
    handle_invalid_context("CGDisplayListDrawInContext", a2, a3, a4, a5, a6, a7, a8);
  }
}

void CGDisplayListDrawInContextDelegate(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (a1 && *(a1 + 688) != *(a1 + 696))
  {
    v6 = *(a1 + 88);
    if (v6.f64[0] != INFINITY && *(a1 + 96) != INFINITY)
    {
      if (a4)
      {
        if (a2)
        {
          v12 = *(a2 + 48);
          if (v12)
          {
            v13 = v12(a2, a3, a4);
            v15 = v14;
            v17 = v16;
            v19 = v18;
          }

          else
          {
            v17 = 1.79769313e308;
            v13 = -8.98846567e307;
            v15 = -8.98846567e307;
            v19 = 1.79769313e308;
          }
        }

        else
        {
          v17 = 0.0;
          v13 = INFINITY;
          v15 = INFINITY;
          v19 = 0.0;
        }

        v24 = *(a4 + 112);
        if (v24)
        {
          Bounds = CGClipStackGetBounds(v24);
          v27 = v26;
          v29 = v28;
          v31 = v30;
        }

        else
        {
          v27 = 0xFFDFFFFFFFFFFFFFLL;
          v29 = 0x7FEFFFFFFFFFFFFFLL;
          Bounds = -8.98846567e307;
          v31 = 0x7FEFFFFFFFFFFFFFLL;
        }

        v47.origin.x = v13;
        v47.origin.y = v15;
        v47.size.width = v17;
        v47.size.height = v19;
        v48 = CGRectIntersection(v47, *&Bounds);
        if (v48.origin.x == INFINITY || v48.origin.y == INFINITY || v48.size.width == 0.0 || v48.size.height == 0.0)
        {
          return;
        }

        v32 = *(a4 + 40);
        v44 = *(a4 + 24);
        v45 = v32;
        v46 = *(a4 + 56);
        v33.n64_u64[0] = CGRectApplyInverseAffineTransform(&v44, *&v48.origin.x, v48.origin.y, v48.size.width, v48.size.height).n64_u64[0];
        v37 = &CGRectNull;
        p_y = &CGRectNull.origin.y;
        p_size = (a1 + 104);
        p_height = (a1 + 112);
        if (*(a1 + 688) == *(a1 + 696))
        {
          p_size = &CGRectNull.size;
        }

        else
        {
          p_y = (a1 + 96);
        }

        if (*(a1 + 688) == *(a1 + 696))
        {
          p_height = &CGRectNull.size.height;
        }

        else
        {
          v37 = (a1 + 88);
        }

        v50.size.height = *p_height;
        v50.origin.x = v37->origin.x;
        v50.origin.y = *p_y;
        v50.size.width = p_size->width;
        *v6.f64 = CGRectIntersection(*v33.n64_u64, v50);
        *&v44 = v6.f64[0];
        *(&v44 + 1) = *&v49.origin.y;
        v45.width = v49.size.width;
        v45.height = v49.size.height;
        if (v6.f64[0] == INFINITY || v49.origin.y == INFINITY || v49.size.width == 0.0 || v49.size.height == 0.0)
        {
          return;
        }

        height = v49.size.height;
        size = v49.size;
        v6.f64[1] = v49.origin.y;
      }

      else
      {
        v20 = *(a1 + 104);
        v44 = *(a1 + 88);
        v45 = v20;
        size = v20;
      }

      v21 = a3;
      v42 = v6;
      if (a3 || (v21 = CGRenderingStateCreate()) != 0)
      {
        v22 = CGGStackCreateWithGState(a4);
        if (vaddvq_s32(vbicq_s8(xmmword_18439C7E0, vuzp1q_s32(vceqq_f64(v42, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(size, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL))))))
        {
          v23 = &v44;
        }

        else
        {
          v23 = 0;
        }

        CG::DisplayList::execute(a1 + 16, a2, v21, v22, v23, a5);
        if (v22)
        {
          CGGStackReset(v22);
          free(v22);
        }

        if (v21 != a3 && atomic_fetch_add_explicit(v21, 0xFFFFFFFF, memory_order_relaxed) == 1)
        {
          free(v21);
        }
      }
    }
  }
}

float64x2_t ripc_GetBounds(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v1 + 48);
  result = vdupq_n_s64(0x7FF0000000000000uLL);
  if (v2)
  {
    v8 = 0uLL;
    v7 = result;
    v4 = (*(*v2 + 72))(v2, &v8);
    result = v7;
    if (v4)
    {
      (*(**(v1 + 48) + 88))(*(v1 + 48), v1 + 40, v7);
      v5.i64[0] = v8;
      v5.i64[1] = SDWORD1(v8);
      result = vcvtq_f64_s64(v5);
      v6 = *(v1 + 40);
      if (v6 != 1.0)
      {
        return vmulq_n_f64(result, 1.0 / v6);
      }
    }
  }

  return result;
}

void CGGStateStrokeCopy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  stroke_state_release(*(a1 + 128), a2, a3, a4, a5, a6, a7, a8);
  v10 = *(a2 + 128);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 128) = v10;
  *(a1 + 20) |= 4u;
  *(a2 + 20) |= 4u;
}

void CGGStateClipToRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  maybeCopyClipState(a1);
  v10 = (a1 + 24);
  v11 = *(*(a1 + 120) + 4);
  if (*(a1 + 32) == 0.0 && *(a1 + 40) == 0.0 || *(a1 + 24) == 0.0 && *(a1 + 48) == 0.0)
  {
    v12 = HIBYTE(v11) & 1;
    v13 = *(a1 + 40);
    *&v22.a = *&v10->a;
    *&v22.c = v13;
    *&v22.tx = *(a1 + 56);
    v14 = a2;
    *&v13 = a3;
    v15 = a4;
    v16 = a5;
    v24 = CGRectApplyAffineTransform(*(&v13 - 8), &v22);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    CGClipStackAddRect(*(a1 + 112), v12, v24.origin.x, v24.origin.y, v24.size.width, v24.size.height);
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v26 = CGRectIntegral(v25);
    *(a1 + 80) = CGRectIntersection(*(a1 + 80), v26);
  }

  else
  {
    v21 = CGClipCreateWithRect(v10, HIBYTE(v11) & 1, a2, a3, a4, a5);
    CGClipStackAddClip(*(a1 + 112), v21);

    CGClipRelease(v21);
  }
}

uint64_t CG::DisplayList::executeEntries(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CGPoint *a7, int a8)
{
  v311 = a1;
  *v312 = a4;
  *v313 = a5;
  *v314 = a6;
  v316 = 0;
  if ((*(a1 + 57) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (a7)
  {
    origin = *a7;
    size = a7[1];
LABEL_14:
    v317 = origin;
    v318 = size;
    goto LABEL_15;
  }

  v15 = *(a1 + 24) == -8.98846567e307 && *(a1 + 32) == -8.98846567e307;
  v16 = v15 && *(a1 + 40) == 1.79769313e308;
  if (v16 && *(a1 + 48) == 1.79769313e308)
  {
LABEL_13:
    origin = CGRectNull.origin;
    size = CGRectNull.size;
    goto LABEL_14;
  }

  v308 = *(a1 + 40);
  v317 = *(a1 + 24);
  v318 = v308;
LABEL_15:
  v319 = 0;
  v321 = CGAffineTransformIdentity;
  v17 = *(a6 + 8);
  if (v17 == a6)
  {
    v18 = CGGStateCreate();
    v19 = *(a6 + 8);
    *(a6 + 8) = v18;
    *v18 = a6;
    *v19 = v18;
    *(v18 + 1) = v19;
    v17 = *(a6 + 8);
  }

  *v315 = v17;
  v20 = *(v17 + 24);
  m = (v17 + 24);
  if (v20 == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v17 + 32)), vceqq_f64(*(v17 + 48), xmmword_18439C630))))) & 1) == 0 && *(v17 + 64) == 0.0)
  {
    m = 0;
  }

  v21 = *(a1 + 24);
  v22 = *(a1 + 40);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v21, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v22, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
  {
    CGGStateClipToRect(v17, v21.f64[0], v21.f64[1], v22.f64[0], v22.f64[1]);
  }

  if (*(a1 + 856))
  {
    v23 = *(v17 + 136);
    if (*(v23 + 16) != 1.0)
    {
      maybe_copy_text_state(v17);
      *(*(v17 + 136) + 16) = 0x3FF0000000000000;
      v17 = *v315;
      v23 = *(*v315 + 136);
    }

    if (*(v23 + 24) != 0.0)
    {
      maybe_copy_text_state(v17);
      *(*(v17 + 136) + 24) = 0;
    }
  }

  *v315 = CGGStackSave(*v314);
  v31 = *v313;
  v32 = *(*v313 + 24);
  v33 = *(*v313 + 56);
  *&v321.c = *(*v313 + 40);
  *&v321.tx = v33;
  *&v321.a = v32;
  if (a2 != a3)
  {
    v34 = a8 ^ 1;
    while (1)
    {
      v35 = *a2;
      v36 = *(*a2 + 8);
      if ((v36 & 0x100000) != 0)
      {
        v37 = v34;
      }

      else
      {
        v37 = 1;
      }

      if (v37 != 1 || (v36 & 0x400000) != 0)
      {
        goto LABEL_37;
      }

      if (v36 <= 3)
      {
        if (v36 <= 1)
        {
          if (v36)
          {
            if (v36 != 1)
            {
              goto LABEL_37;
            }

            if (!v35)
            {
              goto LABEL_37;
            }

            v42 = *v315;
            if (!*v315)
            {
              goto LABEL_37;
            }

            v43 = *(v35 + 32);
            cf.origin = *(v35 + 16);
            cf.size = v43;
            if (CG::DisplayListExecutor::rejectRect(&v311, &cf))
            {
              goto LABEL_37;
            }

            v44 = *(v35 + 48);
            v45 = *(v35 + 104);
            cf.origin = *(v35 + 88);
            cf.size = v45;
            v323 = *(v35 + 120);
            CG::DisplayListExecutor::applyEntryDrawingState(&v311, v44, &cf, v42, v27, v28, v29, v30);
            v46 = *(v35 + 8);
            if ((v46 & 0x40000) != 0)
            {
              v47 = *(v35 + 72);
              v48 = *v315;
              v49 = *(v47 + 56);
              v50 = *(v47 + 64);
              v51 = *(*v315 + 120);
              if (*(v51 + 24) != v49 || *(v51 + 32) != v50)
              {
                maybeCopyRenderingState(*v315);
                v53 = *(v48 + 120);
                *(v53 + 24) = v49;
                *(v53 + 32) = v50;
              }

              v54 = *(v47 + 72);
              if (*(*(v48 + 144) + 16) != v54)
              {
                maybe_copy_device_state(v48);
                *(*(v48 + 144) + 16) = v54;
              }

              v55 = *(v47 + 8);
              v56 = *(v47 + 40);
              cf.size = *(v47 + 24);
              v323 = v56;
              cf.origin = v55;
              if (m)
              {
                v57 = *&m->a;
                v58 = *&m->c;
                v59 = *&m->tx;
                v60 = vmlaq_n_f64(vmulq_n_f64(v58, cf.size.height), *&m->a, cf.size.width);
                cf.origin = vmlaq_n_f64(vmulq_n_f64(v58, cf.origin.y), *&m->a, cf.origin.x);
                cf.size = v60;
                v323 = vaddq_f64(v59, vmlaq_n_f64(vmulq_n_f64(v58, v323.f64[1]), v57, v323.f64[0]));
              }

              v61 = *v313;
              v63 = cf.size;
              v62 = v323;
              *(*v313 + 24) = cf.origin;
              *(v61 + 40) = v63;
              *(v61 + 56) = v62;
              v46 = *(v35 + 8);
            }

            if ((v46 & 0x10000) != 0)
            {
              v64 = *(*(v35 + 56) + 8);
              if (v64)
              {
                CGGStateSetFillColor(*v315, *(v64 + 16));
                v46 = *(v35 + 8);
              }
            }

            if ((v46 & 0x20000) != 0)
            {
              CG::DisplayListExecutor::applyEntryStrokeState(*(v35 + 64), *v315);
            }

            CGGStateSetRenderingIntent(*v315, (*(v44 + 96) << 18) >> 26);
            v65 = *v315;
            v66 = *(v44 + 56);
            if (*(*(*v315 + 120) + 8) != v66)
            {
              maybeCopyRenderingState(*v315);
              *(*(v65 + 120) + 8) = v66;
              v65 = *v315;
            }

            CGGStateSetTextDrawingMode(v65, *(v35 + 216));
            CGGStateSetFontRenderingStyle(*v315, *(v35 + 220));
            CGGStateSetFont(*v315, *(*(v35 + 80) + 16));
            v67 = *v315;
            v68 = *(v35 + 184);
            if (*(*(*v315 + 136) + 16) != v68)
            {
              maybe_copy_text_state(*v315);
              *(*(v67 + 136) + 16) = v68;
              v67 = *v315;
            }

            CGGStateSetFontDilation(v67, *(v35 + 192), *(v35 + 200));
            v69 = *(v35 + 208);
            if (v69)
            {
              CGGStateSetFontSmoothingBackgroundColor(*v315, *(v69 + 16));
            }

            CGGStateSetShouldDrawBitmapRuns(*v315, *(v35 + 224));
            v27 = *(v35 + 232);
            v28 = *(v35 + 240);
            v70 = *(v35 + 152);
            cf.origin = *(v35 + 136);
            cf.size = v70;
            v323 = *(v35 + 168);
            if (!*v312)
            {
              goto LABEL_37;
            }

            v41 = *(*v312 + 88);
            if (!v41)
            {
              goto LABEL_37;
            }

LABEL_315:
            v41();
            goto LABEL_37;
          }

          if (!v35)
          {
            goto LABEL_37;
          }

          v113 = *v315;
          if (!*v315)
          {
            goto LABEL_37;
          }

          v114 = *(v35 + 32);
          cf.origin = *(v35 + 16);
          cf.size = v114;
          if (CG::DisplayListExecutor::rejectRect(&v311, &cf))
          {
            goto LABEL_37;
          }

          v115 = *(v35 + 48);
          v116 = *(v35 + 104);
          cf.origin = *(v35 + 88);
          cf.size = v116;
          v323 = *(v35 + 120);
          CG::DisplayListExecutor::applyEntryDrawingState(&v311, v115, &cf, v113, v27, v28, v29, v30);
          if ((*(v35 + 10) & 4) != 0)
          {
            v117 = *(v35 + 72);
            v118 = *v315;
            v119 = *(v117 + 56);
            v120 = *(v117 + 64);
            v121 = *(*v315 + 120);
            if (*(v121 + 24) != v119 || *(v121 + 32) != v120)
            {
              maybeCopyRenderingState(*v315);
              v123 = *(v118 + 120);
              *(v123 + 24) = v119;
              *(v123 + 32) = v120;
            }

            v124 = *(v117 + 72);
            if (*(*(v118 + 144) + 16) != v124)
            {
              maybe_copy_device_state(v118);
              *(*(v118 + 144) + 16) = v124;
            }

            v125 = *(v117 + 8);
            v126 = *(v117 + 24);
            v127 = *(v117 + 40);
            if (m)
            {
              v128 = *&m->c;
              v127 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v128, v127, 1), *&m->a, v127.f64[0]));
              v126 = vmlaq_n_f64(vmulq_laneq_f64(v128, v126, 1), *&m->a, v126.f64[0]);
              v125 = vmlaq_n_f64(vmulq_laneq_f64(v128, v125, 1), *&m->a, v125.f64[0]);
            }

            v129 = *v313;
            *(*v313 + 24) = v125;
            *(v129 + 40) = v126;
            *(v129 + 56) = v127;
          }

          CGGStateSetInterpolationQuality(*v315, *(v35 + 136));
          v130 = *v313;
          v131 = *v315;
          *(*v313 + 72) = *(v35 + 140);
          *(v130 + 76) = *(v35 + 144);
          CGGStateSetRenderingIntent(v131, *(v35 + 148));
          CGGStateSetImageRenderingIntent(*v315, *(v35 + 148));
          if (*(v35 + 10))
          {
            v132 = *(*(v35 + 56) + 8);
            if (v132)
            {
              CGGStateSetFillColor(*v315, *(v132 + 16));
            }
          }

          v133 = *(v35 + 80);
          v134 = *(v133 + 16);
          if (v134)
          {
            CFRetain(*(v133 + 16));
          }

          if (CGImageGetHeadroomInfo(v134, 0) > 1.0)
          {
            if (!*v312)
            {
              Copy = v134;
              goto LABEL_327;
            }

            v135 = *(*v312 + 264);
            if (v135)
            {
              v136 = v135();
              if (v136)
              {
                v137 = v136;
                CGColorSpaceSanitizeHeadroom(v136, *(*(*v315 + 120) + 48));
                v139 = v138;
                HeadroomInfo = CGImageGetHeadroomInfo(v134, 0);
                v141 = v139 <= 0.0;
                if (v139 >= HeadroomInfo)
                {
                  v141 = 1;
                }

                if (v141)
                {
                  Copy = v134;
                }

                else
                {
                  Copy = 0;
                }

                if (v141 || !v134)
                {
                  goto LABEL_324;
                }

                v143 = *(v134 + 28);
                if (v143)
                {
                  v144 = HeadroomInfo;
                  Property = CGPropertiesGetProperty(v143, @"kCGColorConversionInfoPayload");
                  if (Property)
                  {
                    v146 = Property;
                    Value = CFDictionaryGetValue(Property, @"kCGToneMappingMethod");
                    v148 = CFDictionaryGetValue(v146, @"kCGHDRMediaReferenceWhite");
                    v149 = CFDictionaryGetValue(v146, @"kCGToneMappingMethodOptions");
                    if (Value && v148)
                    {
                      v157 = v149;
                      cf.origin.x = 0.0;
                      v310 = CGToneMappingMethodFromName(Value);
                      ColorSpace = CGImageGetColorSpace(v134);
                      v159 = CGGetFloatValue(v148);
                      if (CGCreateResolvedToneMappingSettingForMethod(v310, v137, ColorSpace, v157, 0, &cf, v160, v161, v139, v144, v159))
                      {
                        Copy = CGImageCreateCopy(v134);
                        if (CGImageSetColorConversionInfoOptions(Copy, *&cf.origin.x))
                        {
                          CFRelease(v134);
                          CGImageSetCachingFlags(Copy, 1);
LABEL_333:
                          if (*&cf.origin.x)
                          {
                            CFRelease(*&cf.origin.x);
                          }

LABEL_324:
                          if (*v312)
                          {
                            v304 = *(*v312 + 80);
                            if (v304)
                            {
                              v304(0.0, 0.0, 1.0, 1.0);
                            }
                          }

LABEL_327:
                          if (Copy)
                          {
                            goto LABEL_328;
                          }

                          goto LABEL_37;
                        }

                        if (Copy)
                        {
                          CFRelease(Copy);
                        }
                      }

                      else
                      {
                        CGPostError("%s: Cannot create resolved tone mapping settings. CGCreateResolvedToneMappingSettingForMethod returned false", v162, v163, v164, v165, v166, v167, v168, "drawImage");
                      }

                      Copy = v134;
                      goto LABEL_333;
                    }

                    CGPostError("%s: Cannot create resolved tone mapping settings. Bad payload", v150, v151, v152, v153, v154, v155, v156, "drawImage");
                  }
                }
              }
            }
          }

          Copy = v134;
          goto LABEL_324;
        }

        if (v36 != 2)
        {
          if (v36 != 3)
          {
            goto LABEL_37;
          }

          if (!v35)
          {
            goto LABEL_37;
          }

          v71 = *v315;
          if (!*v315)
          {
            goto LABEL_37;
          }

          v72 = *(v35 + 32);
          cf.origin = *(v35 + 16);
          cf.size = v72;
          if (CG::DisplayListExecutor::rejectRect(&v311, &cf))
          {
            goto LABEL_37;
          }

          v73 = *(v35 + 48);
          v74 = *(v35 + 104);
          cf.origin = *(v35 + 88);
          cf.size = v74;
          v323 = *(v35 + 120);
          CG::DisplayListExecutor::applyEntryDrawingState(&v311, v73, &cf, v71, v27, v28, v29, v30);
          v75 = *(v35 + 8);
          if ((v75 & 0x40000) != 0)
          {
            v76 = *(v35 + 72);
            v77 = *v315;
            v78 = *(v76 + 56);
            v79 = *(v76 + 64);
            v80 = *(*v315 + 120);
            if (*(v80 + 24) != v78 || *(v80 + 32) != v79)
            {
              maybeCopyRenderingState(*v315);
              v82 = *(v77 + 120);
              *(v82 + 24) = v78;
              *(v82 + 32) = v79;
            }

            v83 = *(v76 + 72);
            if (*(*(v77 + 144) + 16) != v83)
            {
              maybe_copy_device_state(v77);
              *(*(v77 + 144) + 16) = v83;
            }

            v84 = *(v76 + 8);
            v85 = *(v76 + 24);
            v86 = *(v76 + 40);
            if (m)
            {
              v87 = *&m->c;
              v86 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v87, v86, 1), *&m->a, v86.f64[0]));
              v84 = vmlaq_n_f64(vmulq_laneq_f64(v87, v84, 1), *&m->a, v84.f64[0]);
              v85 = vmlaq_n_f64(vmulq_laneq_f64(v87, v85, 1), *&m->a, v85.f64[0]);
            }

            v88 = *v313;
            *(*v313 + 24) = v84;
            *(v88 + 40) = v85;
            *(v88 + 56) = v86;
            v75 = *(v35 + 8);
          }

          if ((v75 & 0x10000) != 0)
          {
            v89 = *(*(v35 + 56) + 8);
            if (v89)
            {
              CGGStateSetFillColor(*v315, *(v89 + 16));
              v75 = *(v35 + 8);
            }
          }

          if ((v75 & 0x20000) != 0)
          {
            CG::DisplayListExecutor::applyEntryStrokeState(*(v35 + 64), *v315);
          }

          CGGStateSetRenderingIntent(*v315, (*(v73 + 96) << 18) >> 26);
          v90 = *v315;
          v91 = *(v73 + 56);
          if (*(*(*v315 + 120) + 8) != v91)
          {
            maybeCopyRenderingState(*v315);
            *(*(v90 + 120) + 8) = v91;
          }

          if (!*v312)
          {
            goto LABEL_37;
          }

          v92 = *(v35 + 136);
          v41 = *(*v312 + 64);
          if (!v41)
          {
            Mutable = CGPathCreateMutable();
            Copy = Mutable;
            v283 = *(v35 + 104);
            cf.origin = *(v35 + 88);
            cf.size = v283;
            v323 = *(v35 + 120);
            p_cf = m;
            if (!m)
            {
              if (*(v35 + 88) == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v35 + 96)), vceqq_f64(*(v35 + 112), xmmword_18439C630))))) & 1) == 0)
              {
                if (*(v35 + 128) == 0.0)
                {
                  p_cf = 0;
                }

                else
                {
                  p_cf = &cf;
                }
              }

              else
              {
                p_cf = &cf;
              }
            }

            CGPathAddRects(Mutable, p_cf, v92, *(v35 + 144));
            CGContextDelegateDrawPath(*v312, *v313, *v315, *(v35 + 80), Copy);
            if (!Copy)
            {
              goto LABEL_37;
            }

            goto LABEL_328;
          }

          goto LABEL_315;
        }

        if (!v35)
        {
          goto LABEL_37;
        }

        v169 = *v315;
        if (!*v315)
        {
          goto LABEL_37;
        }

        v170 = *(v35 + 32);
        cf.origin = *(v35 + 16);
        cf.size = v170;
        if (CG::DisplayListExecutor::rejectRect(&v311, &cf))
        {
          goto LABEL_37;
        }

        v171 = *(v35 + 48);
        v172 = *(v35 + 112);
        cf.origin = *(v35 + 96);
        cf.size = v172;
        v323 = *(v35 + 128);
        CG::DisplayListExecutor::applyEntryDrawingState(&v311, v171, &cf, v169, v27, v28, v29, v30);
        v173 = *(v35 + 8);
        if ((v173 & 0x40000) != 0)
        {
          v174 = *(v35 + 72);
          v175 = *v315;
          v176 = *(v174 + 56);
          v177 = *(v174 + 64);
          v178 = *(*v315 + 120);
          if (*(v178 + 24) != v176 || *(v178 + 32) != v177)
          {
            maybeCopyRenderingState(*v315);
            v180 = *(v175 + 120);
            *(v180 + 24) = v176;
            *(v180 + 32) = v177;
          }

          v181 = *(v174 + 72);
          if (*(*(v175 + 144) + 16) != v181)
          {
            maybe_copy_device_state(v175);
            *(*(v175 + 144) + 16) = v181;
          }

          v182 = *(v174 + 8);
          v183 = *(v174 + 24);
          v184 = *(v174 + 40);
          if (m)
          {
            v185 = *&m->c;
            v184 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v185, v184, 1), *&m->a, v184.f64[0]));
            v182 = vmlaq_n_f64(vmulq_laneq_f64(v185, v182, 1), *&m->a, v182.f64[0]);
            v183 = vmlaq_n_f64(vmulq_laneq_f64(v185, v183, 1), *&m->a, v183.f64[0]);
          }

          v186 = *v313;
          *(*v313 + 24) = v182;
          *(v186 + 40) = v183;
          *(v186 + 56) = v184;
          v173 = *(v35 + 8);
        }

        if ((v173 & 0x10000) != 0)
        {
          v187 = *(*(v35 + 56) + 8);
          if (v187)
          {
            CGGStateSetFillColor(*v315, *(v187 + 16));
            v173 = *(v35 + 8);
          }
        }

        if ((v173 & 0x20000) != 0)
        {
          CG::DisplayListExecutor::applyEntryStrokeState(*(v35 + 64), *v315);
        }

        CGGStateSetRenderingIntent(*v315, (*(v171 + 96) << 18) >> 26);
        v188 = *v315;
        v189 = *(v171 + 56);
        if (*(*(*v315 + 120) + 8) != v189)
        {
          maybeCopyRenderingState(*v315);
          *(*(v188 + 120) + 8) = v189;
        }

        v190 = *(v35 + 88);
        if (!v190)
        {
          goto LABEL_37;
        }

        if (*(v35 + 84) == 1)
        {
          if (!*v312 || *(*v312 + 232))
          {
            v191 = *(v35 + 80);
            if (v191 <= 1)
            {
              v192 = *(v35 + 32);
              cf.origin = *(v35 + 16);
              cf.size = v192;
              CGContextDelegateDrawPathDirect(*v312, *v313, *v315, v191, v190, &cf);
              goto LABEL_37;
            }
          }

          Copy = CGPathCreateMutable();
          CGPathAddPath(Copy, (*v315 + 24), v190);
        }

        else
        {
          if (!m)
          {
            CGContextDelegateDrawPath(*v312, *v313, *v315, *(v35 + 80), v190);
            goto LABEL_37;
          }

          Copy = CGPathCreateMutable();
          CGPathAddPath(Copy, m, v190);
        }

        CGContextDelegateDrawPath(*v312, *v313, *v315, *(v35 + 80), Copy);
        if (Copy)
        {
          goto LABEL_328;
        }
      }

      else if (v36 <= 5)
      {
        if (v36 == 4)
        {
          if (v35)
          {
            v222 = *v315;
            if (*v315)
            {
              v223 = *(v35 + 32);
              cf.origin = *(v35 + 16);
              cf.size = v223;
              if (!CG::DisplayListExecutor::rejectRect(&v311, &cf))
              {
                v224 = *(v35 + 48);
                v225 = *(v35 + 96);
                cf.origin = *(v35 + 80);
                cf.size = v225;
                v323 = *(v35 + 112);
                CG::DisplayListExecutor::applyEntryDrawingState(&v311, v224, &cf, v222, v27, v28, v29, v30);
                v226 = *(v35 + 8);
                if ((v226 & 0x40000) != 0)
                {
                  v227 = *(v35 + 72);
                  v228 = *v315;
                  v229 = *(v227 + 56);
                  v230 = *(v227 + 64);
                  v231 = *(*v315 + 120);
                  if (*(v231 + 24) != v229 || *(v231 + 32) != v230)
                  {
                    maybeCopyRenderingState(*v315);
                    v233 = *(v228 + 120);
                    *(v233 + 24) = v229;
                    *(v233 + 32) = v230;
                  }

                  v234 = *(v227 + 72);
                  if (*(*(v228 + 144) + 16) != v234)
                  {
                    maybe_copy_device_state(v228);
                    *(*(v228 + 144) + 16) = v234;
                  }

                  v235 = *(v227 + 8);
                  v236 = *(v227 + 24);
                  v237 = *(v227 + 40);
                  if (m)
                  {
                    v238 = *&m->c;
                    v237 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v238, v237, 1), *&m->a, v237.f64[0]));
                    v235 = vmlaq_n_f64(vmulq_laneq_f64(v238, v235, 1), *&m->a, v235.f64[0]);
                    v236 = vmlaq_n_f64(vmulq_laneq_f64(v238, v236, 1), *&m->a, v236.f64[0]);
                  }

                  v239 = *v313;
                  *(*v313 + 24) = v235;
                  *(v239 + 40) = v236;
                  *(v239 + 56) = v237;
                  v226 = *(v35 + 8);
                }

                if ((v226 & 0x10000) != 0)
                {
                  v240 = *(*(v35 + 56) + 8);
                  if (v240)
                  {
                    CGGStateSetFillColor(*v315, *(v240 + 16));
                    v226 = *(v35 + 8);
                  }
                }

                if ((v226 & 0x20000) != 0)
                {
                  CG::DisplayListExecutor::applyEntryStrokeState(*(v35 + 64), *v315);
                }

                CGGStateSetRenderingIntent(*v315, (*(v224 + 96) << 18) >> 26);
                v241 = *v315;
                v242 = *(v224 + 56);
                if (*(*(*v315 + 120) + 8) != v242)
                {
                  maybeCopyRenderingState(*v315);
                  *(*(v241 + 120) + 8) = v242;
                  v241 = *v315;
                }

                CGContextDelegateDrawLines(*v312, *v313, v241, *(v35 + 128), *(v35 + 136));
              }
            }
          }

          goto LABEL_37;
        }

        if (v36 == 5)
        {
          if (v35)
          {
            v93 = *v315;
            if (*v315)
            {
              v94 = *(v35 + 32);
              cf.origin = *(v35 + 16);
              cf.size = v94;
              if (!CG::DisplayListExecutor::rejectRect(&v311, &cf))
              {
                v95 = *(v35 + 48);
                v96 = *(v35 + 104);
                cf.origin = *(v35 + 88);
                cf.size = v96;
                v323 = *(v35 + 120);
                CG::DisplayListExecutor::applyEntryDrawingState(&v311, v95, &cf, v93, v27, v28, v29, v30);
                if ((*(v35 + 10) & 4) != 0)
                {
                  v97 = *(v35 + 72);
                  v98 = *v315;
                  v99 = *(v97 + 56);
                  v100 = *(v97 + 64);
                  v101 = *(*v315 + 120);
                  if (*(v101 + 24) != v99 || *(v101 + 32) != v100)
                  {
                    maybeCopyRenderingState(*v315);
                    v103 = *(v98 + 120);
                    *(v103 + 24) = v99;
                    *(v103 + 32) = v100;
                  }

                  v104 = *(v97 + 72);
                  if (*(*(v98 + 144) + 16) != v104)
                  {
                    maybe_copy_device_state(v98);
                    *(*(v98 + 144) + 16) = v104;
                  }

                  v105 = *(v97 + 8);
                  v106 = *(v97 + 24);
                  v107 = *(v97 + 40);
                  if (m)
                  {
                    v108 = *&m->c;
                    v107 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v108, v107, 1), *&m->a, v107.f64[0]));
                    v105 = vmlaq_n_f64(vmulq_laneq_f64(v108, v105, 1), *&m->a, v105.f64[0]);
                    v106 = vmlaq_n_f64(vmulq_laneq_f64(v108, v106, 1), *&m->a, v106.f64[0]);
                  }

                  v109 = *v313;
                  *(*v313 + 24) = v105;
                  *(v109 + 40) = v106;
                  *(v109 + 56) = v107;
                }

                CGGStateSetInterpolationQuality(*v315, *(v35 + 136));
                CGGStateSetRenderingIntent(*v315, *(v35 + 140));
                CGGStateSetRenderingIntent(*v315, (*(v95 + 96) << 18) >> 26);
                v110 = *v315;
                v111 = *(v95 + 56);
                if (*(*(*v315 + 120) + 8) != v111)
                {
                  maybeCopyRenderingState(*v315);
                  *(*(v110 + 120) + 8) = v111;
                }

                v112 = *(v35 + 80);
                if (v112)
                {
                  v26 = *(v112 + 24);
                  if (v26 || (v26 = *(v112 + 16)) != 0)
                  {
                    if (*v312)
                    {
                      v41 = *(*v312 + 96);
                      if (v41)
                      {
                        goto LABEL_315;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        switch(v36)
        {
          case 6:
            if (!v35)
            {
              break;
            }

            v193 = *v315;
            if (!*v315)
            {
              break;
            }

            v194 = *(v35 + 32);
            cf.origin = *(v35 + 16);
            cf.size = v194;
            if (CG::DisplayListExecutor::rejectRect(&v311, &cf))
            {
              break;
            }

            v195 = *(v35 + 48);
            v196 = *(v35 + 104);
            cf.origin = *(v35 + 88);
            cf.size = v196;
            v323 = *(v35 + 120);
            CG::DisplayListExecutor::applyEntryDrawingState(&v311, v195, &cf, v193, v27, v28, v29, v30);
            if ((*(v35 + 10) & 4) != 0)
            {
              v197 = *(v35 + 72);
              v198 = *v315;
              v199 = *(v197 + 56);
              v200 = *(v197 + 64);
              v201 = *(*v315 + 120);
              if (*(v201 + 24) != v199 || *(v201 + 32) != v200)
              {
                maybeCopyRenderingState(*v315);
                v203 = *(v198 + 120);
                *(v203 + 24) = v199;
                *(v203 + 32) = v200;
              }

              v204 = *(v197 + 72);
              if (*(*(v198 + 144) + 16) != v204)
              {
                maybe_copy_device_state(v198);
                *(*(v198 + 144) + 16) = v204;
              }

              v205 = *(v197 + 8);
              v206 = *(v197 + 24);
              v207 = *(v197 + 40);
              if (m)
              {
                v208 = *&m->c;
                v207 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v208, v207, 1), *&m->a, v207.f64[0]));
                v205 = vmlaq_n_f64(vmulq_laneq_f64(v208, v205, 1), *&m->a, v205.f64[0]);
                v206 = vmlaq_n_f64(vmulq_laneq_f64(v208, v206, 1), *&m->a, v206.f64[0]);
              }

              v209 = *v313;
              *(*v313 + 24) = v205;
              *(v209 + 40) = v206;
              *(v209 + 56) = v207;
            }

            CGGStateSetRenderingIntent(*v315, (*(v195 + 96) << 18) >> 26);
            v210 = *v315;
            v211 = *(v195 + 56);
            if (*(*(*v315 + 120) + 8) != v211)
            {
              maybeCopyRenderingState(*v315);
              *(*(v210 + 120) + 8) = v211;
            }

            v212 = *(v35 + 80);
            if (!v212)
            {
              break;
            }

            v213 = *(v212 + 16);
            if (!v213)
            {
              break;
            }

            v214 = *(v35 + 136);
            if (v214 == 3)
            {
              if (!*v312)
              {
                break;
              }

              v294 = *(*v312 + 120);
              if (v294)
              {
                if (v294(*(v35 + 224), *(v35 + 232), *(v35 + 240)) != 1006)
                {
                  break;
                }
              }

              v295 = v213[3];
              Function = CGGradientGetFunction(v213, v24, v25, v26, v27, v28, v29, v30);
              Conic = CGShadingCreateConic(v295, Function, *(v35 + 224), *(v35 + 232), *(v35 + 240), v297, v298, v299, v300, v301, v302);
              if (!Conic)
              {
                break;
              }

              goto LABEL_309;
            }

            if (v214 == 2)
            {
              if (*v312)
              {
                v286 = *(v35 + 176);
                v287 = *(v35 + 184);
                v288 = *(v35 + 192);
                v289 = *(v35 + 200);
                v290 = *(v35 + 208);
                v291 = *(v35 + 216);
                v292 = *(v35 + 140);
                v293 = *(*v312 + 112);
                if (!v293)
                {
                  goto LABEL_303;
                }

                if (v293(v286, v287, v290, v288, v289, v291) == 1006)
                {
                  v292 = *(v35 + 140);
                  v286 = *(v35 + 176);
                  v287 = *(v35 + 184);
                  v288 = *(v35 + 192);
                  v289 = *(v35 + 200);
                  v290 = *(v35 + 208);
                  v291 = *(v35 + 216);
LABEL_303:
                  Conic = CGShadingCreateRadialWithGradient(v213, v292 & 1, (v292 >> 1) & 1, v286, v287, v290, v288, v289, v291);
                  if (!Conic)
                  {
                    break;
                  }

                  goto LABEL_309;
                }
              }
            }

            else
            {
              if (v214 != 1 || !*v312)
              {
                break;
              }

              v215 = *(v35 + 144);
              v216 = *(v35 + 152);
              v217 = *(v35 + 160);
              v218 = *(v35 + 168);
              v219 = *(v35 + 140);
              v220 = *(*v312 + 104);
              if (!v220)
              {
                goto LABEL_222;
              }

              if (v220(v215, v216, v217, v218) == 1006)
              {
                v219 = *(v35 + 140);
                v215 = *(v35 + 144);
                v216 = *(v35 + 152);
                v217 = *(v35 + 160);
                v218 = *(v35 + 168);
LABEL_222:
                Conic = CGShadingCreateAxialWithGradient(v213, v219 & 1, (v219 >> 1) & 1, v215, v216, v217, v218);
                if (!Conic)
                {
                  break;
                }

LABEL_309:
                Copy = Conic;
                if (*v312)
                {
                  v303 = *(*v312 + 96);
                  if (v303)
                  {
                    v303();
                  }
                }

LABEL_328:
                CFRelease(Copy);
              }
            }

            break;
          case 7:
            if (v35)
            {
              v243 = *v315;
              if (*v315)
              {
                v244 = *(v35 + 32);
                cf.origin = *(v35 + 16);
                cf.size = v244;
                if (!CG::DisplayListExecutor::rejectRect(&v311, &cf))
                {
                  v245 = *(v35 + 48);
                  v246 = *(v35 + 104);
                  cf.origin = *(v35 + 88);
                  cf.size = v246;
                  v323 = *(v35 + 120);
                  CG::DisplayListExecutor::applyEntryDrawingState(&v311, v245, &cf, v243, v27, v28, v29, v30);
                  if ((*(v35 + 10) & 4) != 0)
                  {
                    v247 = *(v35 + 72);
                    v248 = *v315;
                    v249 = *(v247 + 56);
                    v250 = *(v247 + 64);
                    v251 = *(*v315 + 120);
                    if (*(v251 + 24) != v249 || *(v251 + 32) != v250)
                    {
                      maybeCopyRenderingState(*v315);
                      v253 = *(v248 + 120);
                      *(v253 + 24) = v249;
                      *(v253 + 32) = v250;
                    }

                    v254 = *(v247 + 72);
                    if (*(*(v248 + 144) + 16) != v254)
                    {
                      maybe_copy_device_state(v248);
                      *(*(v248 + 144) + 16) = v254;
                    }

                    v255 = *(v247 + 8);
                    v256 = *(v247 + 24);
                    v257 = *(v247 + 40);
                    if (m)
                    {
                      v258 = *&m->c;
                      v257 = vaddq_f64(*&m->tx, vmlaq_n_f64(vmulq_laneq_f64(v258, v257, 1), *&m->a, v257.f64[0]));
                      v255 = vmlaq_n_f64(vmulq_laneq_f64(v258, v255, 1), *&m->a, v255.f64[0]);
                      v256 = vmlaq_n_f64(vmulq_laneq_f64(v258, v256, 1), *&m->a, v256.f64[0]);
                    }

                    v259 = *v313;
                    *(*v313 + 24) = v255;
                    *(v259 + 40) = v256;
                    *(v259 + 56) = v257;
                  }

                  CGGStateSetInterpolationQuality(*v315, *(v35 + 136));
                  CGGStateSetRenderingIntent(*v315, *(v35 + 140));
                  CGGStateSetRenderingIntent(*v315, (*(v245 + 96) << 18) >> 26);
                  v267 = *v315;
                  v268 = *(v245 + 56);
                  if (*(*(*v315 + 120) + 8) != v268)
                  {
                    maybeCopyRenderingState(*v315);
                    *(*(v267 + 120) + 8) = v268;
                  }

                  v269 = *(v35 + 80);
                  if (v269)
                  {
                    CGDisplayListDelegateDrawDisplayList(*v312, *v313, *v315, *(v269 + 16));
                  }

                  else
                  {
                    CGPostError("entry has NULL display list resource", v260, v261, v262, v263, v264, v265, v266, v309);
                  }
                }
              }
            }

            break;
          case 8:
            if (v35)
            {
              v39 = *v315;
              if (*v315)
              {
                v40 = (v36 >> 8) & 0xF;
                if (v40 <= 4)
                {
                  if (v40 == 1)
                  {
                    if (!*v312)
                    {
                      break;
                    }

                    v41 = *(*v312 + 168);
                    if (!v41)
                    {
                      break;
                    }
                  }

                  else
                  {
                    if (v40 != 2)
                    {
                      break;
                    }

                    if (!*v312)
                    {
                      break;
                    }

                    v41 = *(*v312 + 168);
                    if (!v41)
                    {
                      break;
                    }
                  }

                  goto LABEL_315;
                }

                if (v40 == 5)
                {
                  v277 = *v312;
                  if (*v312 && !*(*v312 + 168))
                  {
                    break;
                  }

                  v278 = *(v35 + 80);
                  if (v278)
                  {
                    if (!v279)
                    {
                      CGPostError("%s: Unexpected action resource type", v24, v25, v280, v281, v28, v29, v30, "void CG::DisplayListExecutor::handleAction(const DisplayListEntryAction *)");
                      break;
                    }

                    v26 = v279[2];
                  }

                  else
                  {
                    v26 = 0;
                  }

                  v285 = *(v35 + 88);
                  if (v285)
                  {
                    v27 = *(v285 + 16);
                  }

                  else
                  {
                    v27 = 0;
                  }

                  if (!v277)
                  {
                    break;
                  }

                  v41 = *(v277 + 168);
                  if (!v41)
                  {
                    break;
                  }

                  goto LABEL_315;
                }

                if (v40 != 6)
                {
                  break;
                }

                v270 = *(v35 + 80);
                if (!v270)
                {
                  break;
                }

                if (!v271)
                {
                  break;
                }

                v272 = v271[2];
                if (!v272)
                {
                  break;
                }

                v273 = *(v35 + 88);
                if (!v273)
                {
                  break;
                }

                v274 = *(v273 + 16);
                if (!v274)
                {
                  break;
                }

                v24 = *v312;
                if (!*v312)
                {
                  break;
                }

                v275 = v313[0];
                v276 = *(*v312 + 168);
                if (!v276)
                {
                  goto LABEL_275;
                }

                if (v276(*v312, *v313, v39, @"kCGContextDisplayList", v274) == 1006)
                {
                  LODWORD(v24) = v312[0];
                  v275 = v313[0];
LABEL_275:
                  CG::DisplayList::execute(v272 + 16, v24, v275, v314[0], 0, v274);
                }
              }
            }

            break;
        }
      }

LABEL_37:
      a2 += 2;
      if (a2 == a3)
      {
        v31 = *v313;
        break;
      }
    }
  }

  v305 = *&v321.a;
  v306 = *&v321.c;
  *(v31 + 56) = *&v321.tx;
  *(v31 + 40) = v306;
  *(v31 + 24) = v305;
  return CGGStackRestore(*v314, v24, v25, v26, v27, v28, v29, v30);
}

void sub_183EB7108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v17 = v14[7];
  v16 = v14[8];
  *(a13 + 24) = v14[6];
  *(a13 + 40) = v17;
  *(a13 + 56) = v16;
  CGGStackRestore(a14, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void maybeCopyClipState(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v2 = *(a1 + 112);
    *(a1 + 112) = CGClipStackCreateMutableCopy(v2);
    CGClipStackRelease(v2);
    *(a1 + 20) &= ~1u;
  }
}

void CG::DisplayList::execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGRect *a5, CFDictionaryRef theDict)
{
  if (!theDict || !CFDictionaryContainsKey(theDict, @"kCGContextBackgroundColor") || *(a1 + 696) == -1)
  {
    v26 = *(a1 + 672);
    v27 = *(a1 + 680);
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
    p_origin = &a5->origin;
    v33 = 0;
LABEL_26:

    CG::DisplayList::executeEntries(v28, v26, v27, v29, v30, v31, p_origin, v33);
    return;
  }

  Shape = CG::DisplayListShape::getShape(*(a1 + 104), v12);
  if (!Shape)
  {
    v26 = *(a1 + 672);
    v27 = *(a1 + 680);
    v28 = a1;
    v29 = a2;
    v30 = a3;
    v31 = a4;
LABEL_75:
    p_origin = &a5->origin;
    v33 = 1;
    goto LABEL_26;
  }

  v14 = Shape;
  v95 = a4;
  if (a5)
  {
    v107 = CGRectIntegral(*a5);
    x = v107.origin.x;
    y = v107.origin.y;
    width = v107.size.width;
    height = v107.size.height;
    if (v107.size.width < 0.0 || v107.size.height < 0.0)
    {
      v37 = COERCE_DOUBLE(CGRectStandardize(v107));
      if (v37 <= 1073741820.0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 1073741820.0;
      }

      if (v37 >= -1073741820.0)
      {
        v22 = v38;
      }

      else
      {
        v22 = -1073741824;
      }

      v108.origin.x = x;
      v108.origin.y = y;
      v108.size.width = width;
      v108.size.height = height;
      v109 = CGRectStandardize(v108);
      if (v109.origin.y <= 1073741820.0)
      {
        v39 = v109.origin.y;
      }

      else
      {
        v39 = 1073741820.0;
      }

      if (v109.origin.y >= -1073741820.0)
      {
        v24 = v39;
      }

      else
      {
        v24 = -1073741824;
      }

      v110.origin.x = x;
      v110.origin.y = y;
      v110.size.width = width;
      v110.size.height = height;
      v111 = CGRectStandardize(v110);
      v40 = v111.origin.x + v111.size.width;
      if (v40 <= 1073741820.0)
      {
        v41 = v40;
      }

      else
      {
        v41 = 1073741820.0;
      }

      if (v40 >= -1073741820.0)
      {
        v25 = v41;
      }

      else
      {
        v25 = -1073741824;
      }

      v112.origin.x = x;
      v112.origin.y = y;
      v112.size.width = width;
      v112.size.height = height;
      v113 = CGRectStandardize(v112);
      y = v113.origin.y;
      height = v113.size.height;
    }

    else
    {
      v20 = 1073741820.0;
      if (x <= 1073741820.0)
      {
        v21 = x;
      }

      else
      {
        v21 = 1073741820.0;
      }

      if (x >= -1073741820.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = -1073741824;
      }

      if (y <= 1073741820.0)
      {
        v23 = y;
      }

      else
      {
        v23 = 1073741820.0;
      }

      if (y >= -1073741820.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = -1073741824;
      }

      if (x + width <= 1073741820.0)
      {
        v20 = x + width;
      }

      if (x + width >= -1073741820.0)
      {
        v25 = v20;
      }

      else
      {
        v25 = -1073741824;
      }
    }

    v42 = 1073741820.0;
    if (y + height <= 1073741820.0)
    {
      v42 = y + height;
    }

    if (y + height >= -1073741820.0)
    {
      v43 = v42;
    }

    else
    {
      v43 = -1073741824;
    }

    if (v22 >= v25 || v24 >= v43)
    {
      goto LABEL_74;
    }

    v45 = shape_intersect_with_bounds(v15, v14, v22, v24, v25, v43);
    if (!v45 || v45 == &the_empty_shape)
    {
      goto LABEL_74;
    }

    v34 = v45;
    if (v45[v45[1]] == 0x7FFFFFFF)
    {
      free(v45);
LABEL_74:
      v26 = *(a1 + 672);
      v27 = *(a1 + 680);
      v28 = a1;
      v29 = a2;
      v30 = a3;
      v31 = v95;
      goto LABEL_75;
    }
  }

  else
  {
    v34 = shape_copy(Shape);
  }

  v35 = malloc_type_malloc(0x38uLL, 0x1050040CAC2EC8CuLL);
  *v35 = 0;
  *(v35 + 4) = xmmword_18439CC20;
  *(v35 + 20) = vneg_f32(0x100000001);
  *(v35 + 5) = 0;
  *(v35 + 6) = 0;
  *(v35 + 4) = 0;
  v96 = v35;
  if (v34 != &the_empty_shape && v34[v34[1]] != 0x7FFFFFFF)
  {
    *(v35 + 1) = 0;
    *(v35 + 4) = v34;
    *(v35 + 5) = v34 + 2;
  }

  v104 = 0;
  *v105 = 0;
  cf = 0;
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (CGCFDictionaryGetCFTypeRef(theDict, @"kCGContextColorSpace", CGColorSpaceGetTypeID_type_id, &cf))
  {
    v36 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    v36 = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  }

  v94 = &a5->origin;
  cf = v36;
  Model = CGColorSpaceGetModel(v36);
  if (Model >= kCGColorSpaceModelLab)
  {
    CGColorSpaceRelease(cf);
    cf = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
    v48 = 8198;
    v49 = 32;
  }

  else
  {
    v48 = dword_1844F1B44[Model];
    v49 = qword_1844F1B50[Model];
  }

  v102 = *(a3 + 8);
  CGCFDictionaryGetSize(theDict, @"kCGContextResolution", &v102);
  __src = 0;
  v50 = 0;
  v51 = v96;
  while (shape_enum_next(v51, &v105[1], v105, &v104 + 1, &v104))
  {
    v100.x = v105[1];
    v100.y = v105[0];
    *&v101 = (HIDWORD(v104) - v105[1]);
    *(&v101 + 1) = (v104 - v105[0]);
    v52 = *&v102 * *&v101 / 72.0;
    v53 = vcvtpd_u64_f64(v52);
    v54 = *(&v102 + 1) * *(&v101 + 1) / 72.0;
    v55 = CGBitmapContextCreateWithDataAndDictionary(0, v53, vcvtpd_u64_f64(v54), 8, v49, (v49 * v53) >> 3, cf, v48, *&v102, *(&v102 + 1), 0, 0, 0);
    if (v55)
    {
      v63 = v55;
      v64 = v55[14];
      if (v64 != a3)
      {
        *(v64 + 8) = *(a3 + 8);
        v65 = *(a3 + 24);
        v66 = *(a3 + 40);
        *(v64 + 56) = *(a3 + 56);
        *(v64 + 40) = v66;
        *(v64 + 24) = v65;
        *(v64 + 72) = *(a3 + 72);
        *(v64 + 4) = *(a3 + 4);
        *(v64 + 80) = *(a3 + 80);
        *(v64 + 84) = *(a3 + 84);
        *(v64 + 86) = *(a3 + 86);
      }

      CGContextErase(v55, v56, v57, v58, v59, v60, v61, v62);
      if (*(v63 + 16) == 1129601108)
      {
        v73 = *(v63 + 96);
        v74 = vmulq_n_f64(*(v73 + 40), ceil(v54) / *(&v101 + 1));
        *(v73 + 24) = vmulq_n_f64(*(v73 + 24), ceil(v52) / *&v101);
        *(v73 + 40) = v74;
      }

      else
      {
        handle_invalid_context("CGContextScaleCTM", v63, v67, v68, v69, v70, v71, v72);
      }

      if (*(v63 + 16) == 1129601108)
      {
        *(*(v63 + 96) + 56) = vmlsq_lane_f64(vmlsq_lane_f64(*(*(v63 + 96) + 56), *(*(v63 + 96) + 24), v100.x, 0), *(*(v63 + 96) + 40), v100.y, 0);
      }

      else
      {
        handle_invalid_context("CGContextTranslateCTM", v63, v67, v68, v69, v70, v71, v72);
      }

      v75 = *(a1 + 696);
      if (v75 == -1)
      {
        v76 = 0;
      }

      else
      {
        v76 = 16 * v75;
      }

      CG::DisplayList::executeEntries(a1, *(a1 + 672), (*(a1 + 672) + v76 + 16), *(v63 + 40), *(v63 + 112), *(v63 + 104), &v100, 0);
      Image = CGBitmapContextCreateImage(v63);
      CFRelease(v63);
      if (Image)
      {
        v98 = v100;
        v99 = v101;
        v78 = v50 - __src;
        v79 = 0xCCCCCCCCCCCCCCCDLL * ((v50 - __src) >> 3);
        v80 = v79 + 1;
        if (v79 + 1 > 0x666666666666666)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        if (0x999999999999999ALL * (-__src >> 3) > v80)
        {
          v80 = 0x999999999999999ALL * (-__src >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
        {
          v81 = 0x666666666666666;
        }

        else
        {
          v81 = v80;
        }

        if (v81)
        {
          if (v81 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:fe200100]();
        }

        v82 = 40 * v79;
        *v82 = Image;
        *(v82 + 8) = v98;
        *(v82 + 24) = v99;
        v50 = 40 * v79 + 40;
        v83 = (v82 + 40 * (v78 / -40));
        memcpy(v83, __src, v78);
        if (__src)
        {
          operator delete(__src);
        }

        __src = v83;
        v51 = v96;
      }
    }
  }

  CGColorSpaceRelease(cf);
  free(v51);
  if (v34 && v34 != &the_empty_shape)
  {
    free(v34);
  }

  v84 = *(a1 + 696);
  if (v84 == -1)
  {
    v85 = 0;
  }

  else
  {
    v85 = 16 * v84;
  }

  CG::DisplayList::executeEntries(a1, *(a1 + 672), (*(a1 + 672) + v85 + 16), a2, a3, v95, v94, 1);
  if (__src != v50)
  {
    v86 = *(v95 + 8);
    if (v86 == v95)
    {
      v87 = CGGStateCreate();
      v88 = *(v95 + 8);
      *(v95 + 8) = v87;
      *v87 = v95;
      *v88 = v87;
      *(v87 + 1) = v88;
      v86 = *(v95 + 8);
    }

    v89 = __src;
    do
    {
      v90 = *v89;
      if (a2)
      {
        v91 = *(a2 + 80);
        if (v91)
        {
          v91(a2, a3, v86, v90, *(v89 + 8), *(v89 + 16), *(v89 + 24), *(v89 + 32));
          v90 = *v89;
        }
      }

      if (v90)
      {
        CFRelease(v90);
      }

      v89 += 40;
    }

    while (v89 != v50);
  }

  v92 = *(a1 + 696);
  if (v92 == -1)
  {
    v93 = 0;
  }

  else
  {
    v93 = 16 * v92;
  }

  CG::DisplayList::executeEntries(a1, (v93 + *(a1 + 672)), *(a1 + 680), a2, a3, v95, v94, 1);
  if (__src)
  {
    operator delete(__src);
  }
}

void sub_183EB7A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CGClipStackAddRect(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a1)
  {
    v12 = (a1 + 16);
    if (!CGRectContainsRect(*&a3, *(a1 + 16)))
    {
      if (a2)
      {
        v30.origin.x = a3;
        v30.origin.y = a4;
        v30.size.width = a5;
        v30.size.height = a6;
        v25 = CGRectIntersection(*(a1 + 80), v30);
        *(a1 + 80) = v25;
        v13 = *(a1 + 8);
        if ((v13 & 2) != 0)
        {
          x = v25.origin.x;
          y = v25.origin.y;
          width = v25.size.width;
          height = v25.size.height;
          v32 = CGRectIntegral(*(a1 + 48));
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          *(a1 + 16) = CGRectIntersection(v29, v32);
        }

        else
        {
          v14 = *(a1 + 96);
          *v12 = *(a1 + 80);
          v12[1] = v14;
        }

        v20 = v13 | 4;
      }

      else
      {
        v31.origin.x = a3;
        v31.origin.y = a4;
        v31.size.width = a5;
        v31.size.height = a6;
        v26 = CGRectIntersection(*(a1 + 48), v31);
        *(a1 + 48) = v26;
        v27 = CGRectIntegral(v26);
        v15 = v27.origin.x;
        v16 = v27.origin.y;
        v17 = v27.size.width;
        v18 = v27.size.height;
        v19 = *(a1 + 8);
        if ((v19 & 4) != 0)
        {
          v28 = CGRectIntersection(*(a1 + 80), *&v15);
          v15 = v28.origin.x;
          v16 = v28.origin.y;
          v17 = v28.size.width;
          v18 = v28.size.height;
        }

        *(a1 + 16) = v15;
        *(a1 + 24) = v16;
        *(a1 + 32) = v17;
        *(a1 + 40) = v18;
        v20 = v19 | 2;
      }

      *(a1 + 8) = v20;
      *(a1 + 4) = atomic_fetch_add_explicit(&identifier_23214, 1u, memory_order_relaxed) + 1;
    }
  }
}

BOOL CGRectContainsRect(CGRect rect1, CGRect rect2)
{
  x = rect1.origin.x;
  if (rect2.origin.x == INFINITY || rect2.origin.y == INFINITY)
  {
    return 1;
  }

  y = rect1.origin.y;
  if (rect1.origin.x == INFINITY || rect1.origin.y == INFINITY)
  {
    return 0;
  }

  height = rect2.size.height;
  width = rect2.size.width;
  v9 = rect2.origin.y;
  v10 = rect2.origin.x;
  v11 = rect1.size.height;
  v12 = rect1.size.width;
  if (rect1.size.width < 0.0 || rect1.size.height < 0.0)
  {
    v13 = CGRectStandardize(rect1);
    x = v13.origin.x;
    y = v13.origin.y;
    v12 = v13.size.width;
    v11 = v13.size.height;
  }

  if (width < 0.0 || height < 0.0)
  {
    v14.origin.x = v10;
    v14.origin.y = v9;
    v14.size.width = width;
    v14.size.height = height;
    v15 = CGRectStandardize(v14);
    v10 = v15.origin.x;
    v9 = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
  }

  if (x > v10)
  {
    return 0;
  }

  result = 0;
  if (x + v12 >= v10 + width && y <= v9)
  {
    return y + v11 >= v9 + height;
  }

  return result;
}

BOOL CG::DisplayListExecutor::rejectRect(CG::DisplayListExecutor *this, const CGRect *a2)
{
  v3 = *(this + 6);
  v2 = *(this + 7);
  v4 = v3 == INFINITY || v2 == INFINITY;
  result = 0;
  if (!v4)
  {
    if (a2->origin.x > v3 + *(this + 8))
    {
      return 1;
    }

    y = a2->origin.y;
    if (y > v2 + *(this + 9) || a2->origin.x + a2->size.width < v3 || y + a2->size.height < v2)
    {
      return 1;
    }
  }

  return result;
}

void CGGStateDeviceCopy(uint64_t a1, uint64_t a2)
{
  device_state_release(*(a1 + 144));
  v4 = *(a2 + 144);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 144) = v4;
  *(a1 + 20) |= 0x10u;
  *(a2 + 20) |= 0x10u;
}

uint64_t CGGStackSave(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    v3 = CGGStateCreate();
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    *v3 = a1;
    *v4 = v3;
    *(v3 + 1) = v4;
    v2 = *(a1 + 8);
  }

  Copy = CGGStateCreateCopy(v2);
  v6 = *(a1 + 8);
  *(a1 + 8) = Copy;
  *Copy = a1;
  *v6 = Copy;
  *(Copy + 1) = v6;
  return *(a1 + 8);
}

void CGGStateSetStyle(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 120) + 16) != a2)
  {
    maybeCopyRenderingState(a1);
    v4 = *(*(a1 + 120) + 16);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 120) + 16) = a2;
  }
}

void CGGStateSetUndercolorRemoval(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 144) + 40) != a2)
  {
    maybe_copy_device_state(a1);
    v4 = *(*(a1 + 144) + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 144) + 40) = a2;
  }
}

void CGGStateSetBlackGeneration(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 144) + 32) != a2)
  {
    maybe_copy_device_state(a1);
    v4 = *(*(a1 + 144) + 32);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 144) + 32) = a2;
  }
}

uint64_t CG::DisplayListExecutor::applyEntryDrawingState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v12 = *(a2 + 8);
  if (v12)
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 40);
  if (v16 != v13)
  {
    if (v16 && v13)
    {
      if (*(v16 + 4) == *(v13 + 4))
      {
        goto LABEL_95;
      }

      *(a1 + 40) = v13;
      v17 = *(v13 + 120);
      v18 = *(v13 + 32);
      v134 = (v13 + 120);
      v19 = *(v13 + 16);
    }

    else
    {
      *(a1 + 40) = v13;
      if (!v13)
      {
        CGGStackRestore(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8);
        v8 = CGGStackSave(*(a1 + 24));
        *(a1 + 32) = v8;
        *(a1 + 80) = 0;
        goto LABEL_95;
      }

      v17 = *(v13 + 120);
      v18 = *(v13 + 32);
      v134 = (v13 + 120);
      v19 = *(v13 + 16);
      if (!v16)
      {
        v20 = 0;
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v19, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v18, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
        {
          v34 = *(v13 + 24);
          v35 = *(v13 + 40);
LABEL_46:
          v46 = CGClipCreateWithRect(*(a1 + 88), 1, v19.f64[0], v34, v18.f64[0], v35);
          CGGStateAddClip(v8, v46);
          CGClipRelease(v46);
        }

LABEL_47:
        if (v20 >= v17)
        {
          goto LABEL_95;
        }

        v131 = v15;
        v133 = v9;
        v47 = v13 + 8 * v20 + 128;
        v48 = v134;
        while (1)
        {
          if (*v48 <= v20)
          {
            v50 = 0;
            v51 = *(a1 + 88);
            if (!v51)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v49 = v47;
            if (*(v13 + 112) != 3)
            {
              v49 = (*(v13 + 128) + 8 * v20);
            }

            v50 = *v49;
            v51 = *(a1 + 88);
            if (!v51)
            {
              if (!v50)
              {
                goto LABEL_92;
              }

              goto LABEL_66;
            }
          }

          v52 = v50[8];
          v53 = v52;
          if (v53 <= 2)
          {
            if (!v52)
            {
              p_height = &CGRectNull.size.height;
              p_y = &CGRectNull.origin.y;
              v61 = v52 == 0;
              if (v50[8])
              {
                p_size = &CGRectNull.size;
              }

              else
              {
                p_size = (v50 + 40);
              }

              if (v61)
              {
                p_y = (v50 + 32);
              }

              if (v61)
              {
                v63 = (v50 + 24);
              }

              else
              {
                v63 = &CGRectNull;
              }

              if (v61)
              {
                p_height = (v50 + 48);
              }

              v50 = CGClipCreateWithRect(v51, v50[10], v63->origin.x, *p_y, p_size->width, *p_height);
              goto LABEL_92;
            }

            if (v53 == 2)
            {
              Mutable = CGPathCreateMutable();
              v55 = Mutable;
              if (v50[8] == 2)
              {
                v56 = *(v50 + 3);
              }

              else
              {
                v56 = 0;
              }

              v66 = v50[10];
              CGPathAddPath(Mutable, *(a1 + 88), v56);
              v67 = *(v50 + 4);
              if ((v67 & 0xFF00) == 0x200 && (v68 = *(v50 + 2)) != 0)
              {
                CopyWithTransform = CGClipStrokeCreateCopyWithTransform(v68, *(a1 + 88));
                v50 = CGClipCreateWithStrokedPath(v55, CopyWithTransform);
                CGClipStrokeRelease(CopyWithTransform);
              }

              else
              {
                v70 = 1.0;
                if (*(v50 + 4) == 2)
                {
                  v70 = *(v50 + 4);
                }

                v50 = CGClipCreateWithPath(v55, v67 >> 8, v66, v70);
              }

              v48 = v134;
              if (v55)
              {
                CFRelease(v55);
              }

              goto LABEL_92;
            }

LABEL_66:
            atomic_fetch_add_explicit(v50, 1u, memory_order_relaxed);
            goto LABEL_92;
          }

          if (v53 == 3)
          {
            if (v52 == 3)
            {
              v64 = *(v50 + 3);
              if (v64)
              {
                CopyByApplyingTransform = CGClipMaskCreateCopyByApplyingTransform(v64, v51);
                v50 = CGClipCreateWithMask(CopyByApplyingTransform, v50[10]);
                CGClipMaskRelease(CopyByApplyingTransform);
              }
            }

            goto LABEL_92;
          }

          if (v53 != 4)
          {
            goto LABEL_66;
          }

          if (v52 != 4)
          {
            goto LABEL_93;
          }

          v57 = *(v50 + 3);
          if (!v57)
          {
            goto LABEL_93;
          }

          v58 = CGTextClippingCreateCopyByApplyingTransform(v57, v51);
          v50 = CGClipCreateWithTextClipping(v58);
          CGTextClippingRelease(v58);
LABEL_92:
          CGGStateAddClip(v8, v50);
          CGClipRelease(v50);
LABEL_93:
          ++v20;
          v47 += 8;
          if (v17 == v20)
          {
            v9 = v133;
            v15 = v131;
            goto LABEL_95;
          }
        }
      }
    }

    v20 = *(v16 + 120);
    x = *(v16 + 16);
    v22 = *(v16 + 24);
    width = *(v16 + 32);
    v23 = *(v16 + 40);
    v130 = v19.f64[0];
    v132 = v18.f64[0];
    if (v17 >= v20)
    {
      v25 = 0;
      if (v20)
      {
        v26 = (v16 + 128);
        v27 = *(v16 + 112);
        v28 = v26;
        v29 = (v13 + 128);
        while (1)
        {
          if (v17 <= v25)
          {
            v31 = 0;
          }

          else
          {
            v30 = v29;
            if (*(v13 + 112) != 3)
            {
              v30 = (*(v13 + 128) + 8 * v25);
            }

            v31 = *v30;
          }

          v32 = v28;
          if (v27 != 3)
          {
            v32 = (*v26 + 8 * v25);
          }

          v33 = *v32;
          if (v31 != v33 || *(v31 + 4) != *(v33 + 4))
          {
            break;
          }

          ++v25;
          ++v29;
          ++v28;
          if (v20 == v25)
          {
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
      v25 = -1;
    }

    if (v25 == v20)
    {
LABEL_30:
      v34 = v19.f64[1];
      v35 = v18.f64[1];
      v137.origin.x = x;
      v137.origin.y = v22;
      v137.size.width = width;
      v137.size.height = v23;
      v36 = v19.f64[1];
      v37 = v18.f64[1];
      if (CGRectContainsRect(v137, *v19.f64))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v34 = v19.f64[1];
      v35 = v18.f64[1];
    }

    CGGStackRestore(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8);
    v8 = CGGStackSave(*(a1 + 24));
    v20 = 0;
    *(a1 + 32) = v8;
    *(a1 + 80) = 0;
    v38 = *(v8 + 112);
    v39 = &CGRectInfinite;
    v40 = &CGRectInfinite.origin.y;
    v41 = &CGRectInfinite.size;
    v42 = (v38 + 16);
    v43 = (v38 + 24);
    v44 = (v38 + 32);
    v61 = v38 == 0;
    v45 = (v38 + 40);
    if (v61)
    {
      v45 = &CGRectInfinite.size.height;
    }

    else
    {
      v41 = v44;
      v40 = v43;
      v39 = v42;
    }

    v23 = *v45;
    x = v39->origin.x;
    v22 = *v40;
    width = v41->width;
LABEL_37:
    v138.origin.x = v130;
    v138.size.width = v132;
    v138.origin.y = v34;
    v138.size.height = v35;
    v141.origin.x = x;
    v141.origin.y = v22;
    v141.size.width = width;
    v141.size.height = v23;
    if (!CGRectEqualToRect(v138, v141))
    {
      v19.f64[0] = v130;
      if (v130 == -8.98846567e307)
      {
        v18.f64[0] = v132;
        if (v34 == -8.98846567e307 && v132 == 1.79769313e308 && v35 == 1.79769313e308)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v18.f64[0] = v132;
      }

      goto LABEL_46;
    }

    goto LABEL_47;
  }

LABEL_95:
  if (*(a1 + 80) != v15)
  {
    if (v15)
    {
      v71 = *(a1 + 88);
      if (v71)
      {
        if (*v71 == 1.0 && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v71 + 8)), vceqq_f64(*(v71 + 24), xmmword_18439C630))))) & 1) == 0 && *(v71 + 40) == 0.0)
        {
          CFRetain(v15);
          v72 = v15;
        }

        else
        {
          if (_block_invoke_once_17414 != -1)
          {
            dispatch_once(&_block_invoke_once_17414, &__block_literal_global_5_17415);
          }

          Instance = CGTypeCreateInstance(CGSoftMaskGetTypeID_soft_mask_type_id, 144, a3, a4, a5, a6, a7, a8);
          if (!Instance)
          {
            CGGStateSetSoftMask(v8, 0);
            v15 = 0;
            goto LABEL_114;
          }

          v72 = Instance;
          *(Instance + 16) = atomic_fetch_add_explicit(&identifier_17416, 1u, memory_order_relaxed) + 1;
          v76 = *(v71 + 16);
          v77 = vmlaq_n_f64(vmulq_n_f64(v76, *(v15 + 48)), *v71, *(v15 + 40));
          v78 = vaddq_f64(*(v71 + 32), vmlaq_n_f64(vmulq_n_f64(v76, *(v15 + 64)), *v71, *(v15 + 56)));
          *(Instance + 24) = vmlaq_n_f64(vmulq_n_f64(v76, *(v15 + 32)), *v71, *(v15 + 24));
          *(Instance + 40) = v77;
          *(Instance + 56) = v78;
          v79 = *(v15 + 72);
          *(Instance + 88) = *(v15 + 88);
          *(Instance + 72) = v79;
          v80 = *(v15 + 104);
          if (v80)
          {
            CFRetain(*(v15 + 104));
          }

          *(v72 + 104) = v80;
          v81 = *(v15 + 112);
          if (v81)
          {
            CFRetain(*(v15 + 112));
          }

          *(v72 + 112) = v81;
          CFRetain(v15);
          *(v72 + 120) = v15;
          *(v72 + 128) = CGSoftMaskCreateCopyByApplyingTransform_callbacks;
          *(v72 + 144) = off_1EF2407A8;
          *(v72 + 152) = 0;
          v15 = v72;
        }

        CGGStateSetSoftMask(v8, v72);
        CFRelease(v72);
LABEL_114:
        *(a1 + 80) = v15;
        goto LABEL_115;
      }

      v73 = v8;
      v74 = v15;
    }

    else
    {
      v73 = v8;
      v74 = 0;
    }

    CGGStateSetSoftMask(v73, v74);
    goto LABEL_114;
  }

LABEL_115:
  v82 = *(a1 + 88);
  v83 = *v9;
  if (v82)
  {
    v84 = v82[1];
    v85 = vmlaq_n_f64(vmulq_n_f64(v84, v9[1].f64[1]), *v82, v9[1].f64[0]);
    v86 = vaddq_f64(v82[2], vmlaq_n_f64(vmulq_n_f64(v84, v9[2].f64[1]), *v82, v9[2].f64[0]));
    v83 = vmlaq_n_f64(vmulq_n_f64(v84, v9->f64[1]), *v82, v83.f64[0]);
  }

  else
  {
    v85 = v9[1];
    v86 = v9[2];
  }

  v87 = *(a1 + 32);
  *(v87 + 24) = v83;
  *(v87 + 40) = v85;
  *(v87 + 56) = v86;
  v88 = *(a2 + 24);
  if (!v88)
  {
    v89 = 0;
LABEL_130:
    v102 = v8;
    v103 = v89;
LABEL_131:
    CGGStateSetStyle(v102, v103);
    goto LABEL_132;
  }

  v89 = *(v88 + 16);
  if (!v89 || *(v89 + 20) != 2 || (*(v89 + 104) & 0x80000000) != 0)
  {
    goto LABEL_130;
  }

  style_with_type = create_style_with_type(2, a2, a3, a4, a5, a6, a7, a8);
  if (!style_with_type)
  {
    goto LABEL_159;
  }

  v97 = *(v89 + 24);
  if (v97)
  {
    CFRetain(*(v89 + 24));
  }

  *(style_with_type + 24) = v97;
  v98 = *(v89 + 20);
  if (v98 > 2)
  {
    if (v98 != 3)
    {
      if (v98 == 4)
      {
        v118 = *(v89 + 32);
        v119 = *(v89 + 64);
        *(style_with_type + 48) = *(v89 + 48);
        *(style_with_type + 64) = v119;
        *(style_with_type + 32) = v118;
        v120 = *(v89 + 80);
        v121 = *(v89 + 96);
        v122 = *(v89 + 128);
        *(style_with_type + 112) = *(v89 + 112);
        *(style_with_type + 128) = v122;
        *(style_with_type + 80) = v120;
        *(style_with_type + 96) = v121;
        v123 = *(v89 + 144);
        v124 = *(v89 + 160);
        v125 = *(v89 + 176);
        *(style_with_type + 192) = *(v89 + 192);
        *(style_with_type + 160) = v124;
        *(style_with_type + 176) = v125;
        *(style_with_type + 144) = v123;
        goto LABEL_159;
      }

      goto LABEL_155;
    }

    v126 = *(v89 + 32);
  }

  else
  {
    if (v98 != 1)
    {
      if (v98 == 2)
      {
        *(style_with_type + 32) = *(v89 + 32);
        v99 = *(v89 + 48);
        v100 = *(v89 + 64);
        v101 = *(v89 + 96);
        *(style_with_type + 80) = *(v89 + 80);
        *(style_with_type + 96) = v101;
        *(style_with_type + 48) = v99;
        *(style_with_type + 64) = v100;
        goto LABEL_159;
      }

LABEL_155:
      CGLog(2, "%s: Undefined type", v90, v91, v92, v93, v94, v95, "CGMutableStyleRef CGStyleCreateMutableCopy(CGStyleRef)");
      goto LABEL_159;
    }

    v126 = *(v89 + 32);
    v127 = *(v89 + 48);
    v128 = *(v89 + 64);
    *(style_with_type + 80) = *(v89 + 80);
    *(style_with_type + 48) = v127;
    *(style_with_type + 64) = v128;
  }

  *(style_with_type + 32) = v126;
LABEL_159:
  v139 = *(a2 + 64);
  v129 = *(v8 + 40);
  *&v135.a = *(v8 + 24);
  *&v135.c = v129;
  *&v135.tx = *(v8 + 56);
  v140 = CGRectApplyAffineTransform(v139, &v135);
  if (!style_with_type)
  {
    v102 = v8;
    v103 = 0;
    goto LABEL_131;
  }

  if (*(style_with_type + 20) == 2)
  {
    *(style_with_type + 72) = v140;
  }

  CGGStateSetStyle(v8, style_with_type);
  CFRelease(style_with_type);
LABEL_132:
  v104 = *(a2 + 40);
  if (v104)
  {
    v105 = *(v104 + 16);
  }

  else
  {
    v105 = 0;
  }

  CGGStateSetUndercolorRemoval(v8, v105);
  v106 = *(a2 + 32);
  if (v106)
  {
    v107 = *(v106 + 16);
  }

  else
  {
    v107 = 0;
  }

  CGGStateSetBlackGeneration(v8, v107);
  v108 = *(a2 + 48);
  if (*(*(v8 + 144) + 8) != v108)
  {
    maybe_copy_device_state(v8);
    *(*(v8 + 144) + 8) = v108;
  }

  CGGStateSetCompositeOperation(v8, (*(a2 + 96) << 26) >> 26);
  CGGStateSetShouldAntialias(v8, (*(a2 + 96) >> 6) & 1);
  CGGStateSetAlphaIsShape(v8, (*(a2 + 96) >> 7) & 1);
  v109 = *(a2 + 96);
  v110 = *(v8 + 144);
  v111 = (v109 >> 14) & 1;
  if (*(v110 + 24) != v111)
  {
    maybe_copy_device_state(v8);
    v110 = *(v8 + 144);
    *(v110 + 24) = v111;
    v109 = *(a2 + 96);
  }

  v112 = (v109 >> 15) & 1;
  if (*(v110 + 25) != v112)
  {
    maybe_copy_device_state(v8);
    v110 = *(v8 + 144);
    *(v110 + 25) = v112;
  }

  v113 = *(a2 + 100);
  if (*(v110 + 28) != v113)
  {
    maybe_copy_device_state(v8);
    *(*(v8 + 144) + 28) = v113;
  }

  v114 = *(a2 + 56);
  if (*(*(v8 + 120) + 8) != v114)
  {
    maybeCopyRenderingState(v8);
    *(*(v8 + 120) + 8) = v114;
  }

  CGGStateSetEDRTargetHeadroom(v8, *(a2 + 104));
  v115 = *(a2 + 108);
  v116 = *(a2 + 112);

  return CGGStateSetContentToneMappingInfo(v8, v115, v116);
}

void CGGStateSetAlphaIsShape(uint64_t a1, int a2)
{
  if (((((*(*(a1 + 120) + 7) & 2) == 0) ^ a2) & 1) == 0)
  {
    maybeCopyRenderingState(a1);
    if (a2)
    {
      v4 = 0x2000000;
    }

    else
    {
      v4 = 0;
    }

    *(*(a1 + 120) + 4) = *(*(a1 + 120) + 4) & 0xFDFFFFFF | v4;
  }
}

void CGGStateSetCompositeOperation(uint64_t a1, int a2)
{
  if (a2 != (*(*(a1 + 120) + 4) << 16) >> 24)
  {
    v2 = a2;
    maybeCopyRenderingState(a1);
    *(*(a1 + 120) + 5) = v2;
  }
}

void CGGStateSetShouldAntialias(uint64_t a1, int a2)
{
  if (((((*(*(a1 + 120) + 7) & 1) == 0) ^ a2) & 1) == 0)
  {
    maybeCopyRenderingState(a1);
    if (a2)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0;
    }

    *(*(a1 + 120) + 4) = *(*(a1 + 120) + 4) & 0xFEFFFFFF | v4;
  }
}

CFPropertyListRef CGColorSpaceCopyPropertyList(CGColorSpaceRef space)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((CGColorSpaceGetType(space) & 0xFFFFFFFE) == 8)
  {
    return 0;
  }

  ID = CGColorSpaceGetID(space);
  if (ID)
  {
    LODWORD(valuePtr) = ID;
    return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }

  if (space && (v5 = *(*(space + 3) + 80)) != 0 && (v6 = CFRetain(v5)) != 0)
  {
    v2 = v6;
    if (CFEqual(v6, @"kCGColorSpaceDeviceGray"))
    {
      return @"kCGColorSpaceGenericGrayGamma2_2";
    }

    else if (CFEqual(v2, @"kCGColorSpaceDeviceRGB"))
    {
      return @"kCGColorSpaceSRGB";
    }

    else if (CFEqual(v2, @"kCGColorSpaceDeviceCMYK"))
    {
      return @"kCGColorSpaceGenericCMYK";
    }
  }

  else
  {
    v7 = CGColorSpaceCopyICCData(space);
    if (v7)
    {
      v2 = v7;
      if (CGColorSpaceUsesExtendedRange(space))
      {
        *&valuePtr = @"kCGColorSpaceICCData";
        *(&valuePtr + 1) = @"kCGColorSpaceExtendedRange";
        v8 = *MEMORY[0x1E695E4D0];
        values = v2;
        v19 = v8;
        v9 = CFDictionaryCreate(0, &valuePtr, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFRelease(v2);
        return v9;
      }
    }

    else
    {
      if (CGColorSpaceGetType(space) != 7)
      {
        return 0;
      }

      BaseColorSpace = CGColorSpaceGetBaseColorSpace(space);
      v11 = CGColorSpaceCopyPropertyList(BaseColorSpace);
      if (!v11)
      {
        return 0;
      }

      v12 = v11;
      if (space && (v13 = *(space + 3), *(v13 + 28) == 5))
      {
        v14 = *(*(v13 + 96) + 8);
      }

      else
      {
        v14 = -1;
      }

      v17 = v14;
      v15 = CFNumberCreate(0, kCFNumberSInt8Type, &v17);
      v16 = CGColorSpaceCopyColorTable(space);
      valuePtr = xmmword_1E6E342D8;
      v22 = @"kCGIndexedColorTableKey";
      values = v12;
      v19 = v15;
      v20 = v16;
      v2 = CFDictionaryCreate(0, &valuePtr, &values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      CFRelease(v12);
    }
  }

  return v2;
}