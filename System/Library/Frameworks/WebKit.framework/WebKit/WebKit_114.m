uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::unobserveMedia(uint64_t this)
{
  if (*(this + 44) == 1)
  {
    *(this + 44) = 0;
    if (*(*(this + 80) + 128))
    {
      return WebCore::RealtimeMediaSource::removeVideoFrameObserver();
    }

    else
    {
      return WebCore::RealtimeMediaSource::removeAudioSampleObserver();
    }
  }

  return this;
}

void WebKit::UserMediaCaptureManagerProxySourceProxy::operator delete(WebCore::RealtimeMediaSource **a1)
{
  WebKit::UserMediaCaptureManagerProxySourceProxy::~UserMediaCaptureManagerProxySourceProxy(a1);
  if (v1[10])
  {

    bzero(v1, 0x578uLL);
  }

  else
  {

    bmalloc::api::tzoneFree(v1, v2);
  }
}

WTF::StringImpl *WebKit::UserMediaCaptureManagerProxySourceProxy::settings(WebKit::UserMediaCaptureManagerProxySourceProxy *this)
{
  v2 = *(this + 10);
  (**v2)(v2);
  if ((*(v2 + 128) & 1) == 0)
  {
    v3 = (*(*v2 + 136))(v2);
    goto LABEL_21;
  }

  v3 = (this + 288);
  if (*(this + 392))
  {
LABEL_21:
    (*(*v2 + 8))(v2);
    return v3;
  }

  v4 = (*(*v2 + 136))(v2);
  v6 = v4;
  if (*(this + 392) == 1)
  {
    v7 = *v4;
    v8 = *(v4 + 16);
    *(this + 320) = *(v4 + 32);
    *v3 = v7;
    *(this + 19) = v8;
    v9 = *(v4 + 40);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    v10 = *(this + 41);
    *(this + 41) = v9;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v5);
    }

    v11 = *(v6 + 48);
    if (v11)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    v12 = *(this + 42);
    *(this + 42) = v11;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v5);
    }

    v13 = *(v6 + 56);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    result = *(this + 43);
    *(this + 43) = v13;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v5);
    }

    v15 = *(v6 + 64);
    v16 = *(v6 + 80);
    *(this + 382) = *(v6 + 94);
    *(this + 22) = v15;
    *(this + 23) = v16;
  }

  else
  {
    result = std::__optional_storage_base<WebCore::RealtimeMediaSourceSettings,false>::__construct[abi:sn200100]<WebCore::RealtimeMediaSourceSettings const&>(this + 288, v4);
  }

  v17 = *(this + 100);
  v18 = *(this + 101);
  if (*(this + 50))
  {
    v20 = WebCore::RealtimeMediaSource::intrinsicSize(v2);
    v21 = (*(*v2 + 208))(v2, v17 | (v18 << 32), v20);
    result = (*(*v2 + 200))(v2);
    if (result == 270 || result == 90)
    {
      v22 = HIDWORD(v21);
    }

    else
    {
      v22 = v21;
      LODWORD(v21) = HIDWORD(v21);
    }

    if ((*(this + 392) & 1) == 0)
    {
      goto LABEL_37;
    }

    *(this + 72) = v22;
    *(this + 73) = v21;
    v19 = *(this + 51);
    if (v19 != 0.0)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v19 = *(this + 51);
  if (v19 == 0.0)
  {
    if ((*(this + 392) & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  if (*(this + 392))
  {
LABEL_35:
    if (v19 < *(this + 74))
    {
      v23 = v19;
      *(this + 74) = v23;
    }

    goto LABEL_21;
  }

LABEL_37:
  __break(1u);
  return result;
}

__n128 std::__optional_storage_base<WebCore::RealtimeMediaSourceSettings,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RealtimeMediaSourceSettings,false>>(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 104) == *(a2 + 104))
  {
    if (*(a1 + 104))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 32) = *(a2 + 32);
      *a1 = v4;
      *(a1 + 16) = v5;
      v6 = *(a2 + 5);
      *(a2 + 5) = 0;
      v7 = *(a1 + 40);
      *(a1 + 40) = v6;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }

      v8 = *(a2 + 6);
      *(a2 + 6) = 0;
      v9 = *(a1 + 48);
      *(a1 + 48) = v8;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, a2);
      }

      v10 = *(a2 + 7);
      *(a2 + 7) = 0;
      v11 = *(a1 + 56);
      *(a1 + 56) = v10;
      if (v11)
      {
        if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, a2);
        }
      }

      result = a2[4];
      v13 = a2[5];
      *(a1 + 94) = *(a2 + 94);
      *(a1 + 64) = result;
      *(a1 + 80) = v13;
    }
  }

  else if (*(a1 + 104))
  {

    std::__optional_destruct_base<WebCore::RealtimeMediaSourceSettings,false>::reset[abi:sn200100](a1, a2);
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    *(a1 + 32) = *(a2 + 32);
    *a1 = v14;
    *(a1 + 16) = v15;
    v16 = *(a2 + 5);
    *(a2 + 5) = 0;
    *(a1 + 40) = v16;
    v17 = *(a2 + 6);
    *(a2 + 6) = 0;
    *(a1 + 48) = v17;
    v18 = *(a2 + 7);
    *(a2 + 7) = 0;
    *(a1 + 56) = v18;
    result = a2[4];
    v19 = a2[5];
    *(a1 + 94) = *(a2 + 94);
    *(a1 + 64) = result;
    *(a1 + 80) = v19;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t std::__optional_destruct_base<WebCore::RealtimeMediaSourceSettings,false>::reset[abi:sn200100](uint64_t result, WTF::StringImpl *a2)
{
  if (*(result + 104) == 1)
  {
    v2 = result;
    v3 = *(result + 56);
    *(v2 + 56) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }

    result = *(v2 + 40);
    *(v2 + 40) = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, a2);
      }
    }

    *(v2 + 104) = 0;
  }

  return result;
}

uint64_t std::__optional_storage_base<WebCore::RealtimeMediaSourceSettings,false>::__construct[abi:sn200100]<WebCore::RealtimeMediaSourceSettings const&>(uint64_t result, __int128 *a2)
{
  if (result)
  {
    v2 = *a2;
    v3 = a2[1];
    *(result + 32) = *(a2 + 32);
    *result = v2;
    *(result + 16) = v3;
    v4 = *(a2 + 5);
    if (v4)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *(result + 40) = v4;
    v5 = *(a2 + 6);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    *(result + 48) = v5;
    v6 = *(a2 + 7);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    *(result + 56) = v6;
    v7 = a2[4];
    v8 = a2[5];
    *(result + 94) = *(a2 + 94);
    *(result + 64) = v7;
    *(result + 80) = v8;
    *(result + 104) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::updateVideoConstraints(uint64_t a1, uint64_t a2)
{
  std::optional<WebCore::MediaConstraints>::operator=[abi:sn200100]<WebCore::MediaConstraints const&,void>(a1 + 416, a2);
  WebCore::RealtimeMediaSource::extractVideoPresetConstraints();
  if (v9)
  {
    v3 = *(a1 + 400);
    v4 = v3 != v8;
    *(a1 + 400) = v8;
    if (v11 != 1)
    {
      v4 = v3 != v8 || *(a1 + 404) != 0;
      *(a1 + 404) = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if (v11 != 1)
    {
      v4 = 0;
      goto LABEL_16;
    }

    v4 = *(a1 + 400) != 0;
    *(a1 + 400) = 0;
  }

  if (*(a1 + 404) != v10)
  {
    v4 = 1;
  }

  *(a1 + 404) = v10;
LABEL_16:
  if (v13 == 1)
  {
    v6 = *(a1 + 408) != v12;
    *(a1 + 408) = v12;
  }

  else
  {
    v6 = *(a1 + 408) != 0.0;
    *(a1 + 408) = 0;
  }

  return v4 | v6;
}

uint64_t std::optional<WebCore::MediaConstraints>::operator=[abi:sn200100]<WebCore::MediaConstraints const&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 968) == 1)
  {
    WebCore::MediaTrackConstraintSetMap::operator=(a1, a2);
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 944), (a2 + 944));
    v4 = *(a2 + 960);
  }

  else
  {
    WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(a1, a2);
    WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 944, a2 + 944);
    v4 = *(a2 + 960);
    *(a1 + 968) = 1;
  }

  *(a1 + 960) = v4;
  return a1;
}

unsigned int *WebCore::MediaTrackConstraintSetMap::operator=(unsigned int *a1, _BYTE *a2)
{
  std::__optional_storage_base<WebCore::IntConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::IntConstraint,false> const&>(a1, a2);
  std::__optional_storage_base<WebCore::IntConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::IntConstraint,false> const&>((a1 + 14), (a2 + 56));
  std::__optional_storage_base<WebCore::IntConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::IntConstraint,false> const&>((a1 + 28), (a2 + 112));
  std::__optional_storage_base<WebCore::IntConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::IntConstraint,false> const&>((a1 + 42), (a2 + 168));
  std::__optional_storage_base<WebCore::DoubleConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::DoubleConstraint,false> const&>((a1 + 56), (a2 + 224));
  std::__optional_storage_base<WebCore::DoubleConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::DoubleConstraint,false> const&>((a1 + 78), (a2 + 312));
  std::__optional_storage_base<WebCore::DoubleConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::DoubleConstraint,false> const&>((a1 + 100), (a2 + 400));
  std::__optional_storage_base<WebCore::BooleanConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BooleanConstraint,false> const&>((a1 + 122), (a2 + 488));
  std::__optional_storage_base<WebCore::BooleanConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BooleanConstraint,false> const&>((a1 + 128), (a2 + 512));
  std::__optional_storage_base<WebCore::BooleanConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BooleanConstraint,false> const&>((a1 + 134), (a2 + 536));
  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::StringConstraint,false> const&>(a1 + 140, a2 + 560);
  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::StringConstraint,false> const&>(a1 + 154, a2 + 616);
  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::StringConstraint,false> const&>(a1 + 168, a2 + 672);
  std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::StringConstraint,false> const&>(a1 + 182, a2 + 728);
  std::__optional_storage_base<WebCore::DoubleConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::DoubleConstraint,false> const&>((a1 + 196), (a2 + 784));
  std::__optional_storage_base<WebCore::BooleanConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BooleanConstraint,false> const&>((a1 + 218), (a2 + 872));
  std::__optional_storage_base<WebCore::BooleanConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BooleanConstraint,false> const&>((a1 + 224), (a2 + 896));
  std::__optional_storage_base<WebCore::BooleanConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BooleanConstraint,false> const&>((a1 + 230), (a2 + 920));
  return a1;
}

unsigned int *WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, unsigned int *a2)
{
  if (a2 != a1)
  {
    v4 = a2[3];
    if (a1[3] <= v4)
    {
      if (v4 > a1[2])
      {
        WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, a2[3]);
      }
    }

    else
    {
      WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(a1, v4);
    }

    v5 = *a2;
    v6 = a1[3];
    v7 = *a1;
    if (v6)
    {
      v8 = 944 * v6;
      do
      {
        WebCore::MediaTrackConstraintSetMap::operator=(v7, v5);
        v5 += 944;
        v7 += 236;
        v8 -= 944;
      }

      while (v8);
      v5 = *a2;
      v6 = a1[3];
      v7 = *a1;
    }

    v9 = a2[3];
    if (v6 != v9)
    {
      v10 = &v7[236 * v6];
      v11 = &v5[944 * v6];
      v12 = 944 * v9 - 944 * v6;
      do
      {
        v10 = (WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v10, v11) + 944);
        v11 = (v11 + 944);
        v12 -= 944;
      }

      while (v12);
      v6 = a2[3];
    }

    a1[3] = v6;
  }

  return a1;
}

__n128 std::__optional_storage_base<WebCore::IntConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::IntConstraint,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      *(a1 + 8) = *(a2 + 8);
      result = *(a2 + 12);
      *(a1 + 25) = *(a2 + 25);
      *(a1 + 12) = result;
    }
  }

  else if (*(a1 + 48))
  {
    *(a1 + 48) = 0;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = &unk_1F10E7EC8;
    result = *(a2 + 12);
    *(a1 + 25) = *(a2 + 25);
    *(a1 + 12) = result;
    *a1 = &unk_1F10E7EA0;
    *(a1 + 48) = 1;
  }

  return result;
}

__n128 std::__optional_storage_base<WebCore::DoubleConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::DoubleConstraint,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {
      *(a1 + 8) = *(a2 + 8);
      result = *(a2 + 16);
      v3 = *(a2 + 32);
      v4 = *(a2 + 48);
      *(a1 + 57) = *(a2 + 57);
      *(a1 + 32) = v3;
      *(a1 + 48) = v4;
      *(a1 + 16) = result;
    }
  }

  else if (*(a1 + 80))
  {
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = &unk_1F10E7F40;
    result = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
    *(a1 + 16) = result;
    *a1 = &unk_1F10E7F18;
    *(a1 + 80) = 1;
  }

  return result;
}

uint64_t std::__optional_storage_base<WebCore::BooleanConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BooleanConstraint,false> const&>(uint64_t result, uint64_t a2)
{
  if (*(result + 16) == *(a2 + 16))
  {
    if (*(result + 16))
    {
      *(result + 8) = *(a2 + 8);
      *(result + 9) = *(a2 + 9);
    }
  }

  else if (*(result + 16))
  {
    *(result + 16) = 0;
  }

  else
  {
    *(result + 8) = *(a2 + 8);
    *result = &unk_1F10E7F68;
    *(result + 9) = *(a2 + 9);
    *(result + 16) = 1;
  }

  return result;
}

unsigned int *std::__optional_storage_base<WebCore::StringConstraint,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::StringConstraint,false> const&>(unsigned int *result, _BYTE *a2)
{
  v3 = result;
  if (*(result + 48) == a2[48])
  {
    if (*(result + 48))
    {
      *(result + 8) = a2[8];
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(result + 4, (a2 + 16));

      return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v3 + 8, (a2 + 32));
    }
  }

  else if (*(result + 48))
  {
    *result = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((result + 8), a2);
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v3 + 4), v4);
    *(v3 + 48) = 0;
  }

  else
  {
    *(result + 8) = a2[8];
    *result = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((result + 4), (a2 + 16));
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((v3 + 8), (a2 + 32));
    *(v3 + 48) = 1;
  }

  return result;
}

WebCore::MediaTrackConstraintSetMap *WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(WebCore::MediaTrackConstraintSetMap *this, const WebCore::MediaTrackConstraintSetMap *a2)
{
  *this = 0;
  *(this + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(this + 8) = *(a2 + 8);
    *this = &unk_1F10E7EC8;
    v4 = *(a2 + 12);
    *(this + 25) = *(a2 + 25);
    *(this + 12) = v4;
    *this = &unk_1F10E7EA0;
    *(this + 48) = 1;
  }

  *(this + 56) = 0;
  *(this + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    *(this + 64) = *(a2 + 64);
    *(this + 7) = &unk_1F10E7EC8;
    v5 = *(a2 + 68);
    *(this + 81) = *(a2 + 81);
    *(this + 68) = v5;
    *(this + 7) = &unk_1F10E7EA0;
    *(this + 104) = 1;
  }

  *(this + 112) = 0;
  *(this + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    *(this + 120) = *(a2 + 120);
    *(this + 14) = &unk_1F10E7EC8;
    v6 = *(a2 + 124);
    *(this + 137) = *(a2 + 137);
    *(this + 124) = v6;
    *(this + 14) = &unk_1F10E7EA0;
    *(this + 160) = 1;
  }

  *(this + 168) = 0;
  *(this + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    *(this + 176) = *(a2 + 176);
    *(this + 21) = &unk_1F10E7EC8;
    v7 = *(a2 + 180);
    *(this + 193) = *(a2 + 193);
    *(this + 180) = v7;
    *(this + 21) = &unk_1F10E7EA0;
    *(this + 216) = 1;
  }

  *(this + 224) = 0;
  *(this + 304) = 0;
  if (*(a2 + 304) == 1)
  {
    *(this + 232) = *(a2 + 232);
    *(this + 28) = &unk_1F10E7F40;
    v8 = *(a2 + 15);
    v9 = *(a2 + 16);
    v10 = *(a2 + 17);
    *(this + 281) = *(a2 + 281);
    *(this + 16) = v9;
    *(this + 17) = v10;
    *(this + 15) = v8;
    *(this + 28) = &unk_1F10E7F18;
    *(this + 304) = 1;
  }

  *(this + 312) = 0;
  *(this + 392) = 0;
  if (*(a2 + 392) == 1)
  {
    *(this + 320) = *(a2 + 320);
    *(this + 39) = &unk_1F10E7F40;
    v11 = *(a2 + 328);
    v12 = *(a2 + 344);
    v13 = *(a2 + 360);
    *(this + 369) = *(a2 + 369);
    *(this + 344) = v12;
    *(this + 360) = v13;
    *(this + 328) = v11;
    *(this + 39) = &unk_1F10E7F18;
    *(this + 392) = 1;
  }

  *(this + 400) = 0;
  *(this + 480) = 0;
  if (*(a2 + 480) == 1)
  {
    *(this + 408) = *(a2 + 408);
    *(this + 50) = &unk_1F10E7F40;
    v14 = *(a2 + 26);
    v15 = *(a2 + 27);
    v16 = *(a2 + 28);
    *(this + 457) = *(a2 + 457);
    *(this + 27) = v15;
    *(this + 28) = v16;
    *(this + 26) = v14;
    *(this + 50) = &unk_1F10E7F18;
    *(this + 480) = 1;
  }

  *(this + 488) = 0;
  *(this + 504) = 0;
  if (*(a2 + 504) == 1)
  {
    *(this + 496) = *(a2 + 496);
    *(this + 61) = &unk_1F10E7F68;
    *(this + 497) = *(a2 + 497);
    *(this + 504) = 1;
  }

  *(this + 512) = 0;
  *(this + 528) = 0;
  if (*(a2 + 528) == 1)
  {
    *(this + 520) = *(a2 + 520);
    *(this + 64) = &unk_1F10E7F68;
    *(this + 521) = *(a2 + 521);
    *(this + 528) = 1;
  }

  *(this + 536) = 0;
  *(this + 552) = 0;
  if (*(a2 + 552) == 1)
  {
    *(this + 544) = *(a2 + 544);
    *(this + 67) = &unk_1F10E7F68;
    *(this + 545) = *(a2 + 545);
    *(this + 552) = 1;
  }

  std::optional<WebCore::StringConstraint>::optional[abi:sn200100](this + 560, a2 + 560);
  std::optional<WebCore::StringConstraint>::optional[abi:sn200100](this + 616, a2 + 616);
  std::optional<WebCore::StringConstraint>::optional[abi:sn200100](this + 672, a2 + 672);
  std::optional<WebCore::StringConstraint>::optional[abi:sn200100](this + 728, a2 + 728);
  *(this + 784) = 0;
  *(this + 864) = 0;
  if (*(a2 + 864) == 1)
  {
    *(this + 792) = *(a2 + 792);
    *(this + 98) = &unk_1F10E7F40;
    v17 = *(a2 + 50);
    v18 = *(a2 + 51);
    v19 = *(a2 + 52);
    *(this + 841) = *(a2 + 841);
    *(this + 51) = v18;
    *(this + 52) = v19;
    *(this + 50) = v17;
    *(this + 98) = &unk_1F10E7F18;
    *(this + 864) = 1;
  }

  *(this + 872) = 0;
  *(this + 888) = 0;
  if (*(a2 + 888) == 1)
  {
    *(this + 880) = *(a2 + 880);
    *(this + 109) = &unk_1F10E7F68;
    *(this + 881) = *(a2 + 881);
    *(this + 888) = 1;
  }

  *(this + 896) = 0;
  *(this + 912) = 0;
  if (*(a2 + 912) == 1)
  {
    *(this + 904) = *(a2 + 904);
    *(this + 112) = &unk_1F10E7F68;
    *(this + 905) = *(a2 + 905);
    *(this + 912) = 1;
  }

  *(this + 920) = 0;
  *(this + 936) = 0;
  if (*(a2 + 936) == 1)
  {
    *(this + 928) = *(a2 + 928);
    *(this + 115) = &unk_1F10E7F68;
    *(this + 929) = *(a2 + 929);
    *(this + 936) = 1;
  }

  return this;
}

_BYTE *std::optional<WebCore::StringConstraint>::optional[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[48] = 0;
  if (*(a2 + 48) == 1)
  {
    a1[8] = *(a2 + 8);
    *a1 = &unk_1F10E7F90;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 16), a2 + 16);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((a1 + 32), a2 + 32);
    a1[48] = 1;
  }

  return a1;
}

uint64_t WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 12);
  *result = 0;
  *(result + 8) = 0;
  *(result + 12) = v3;
  if (!v3)
  {
    return v2;
  }

  if (v3 < 0x456C7A)
  {
    v5 = 944 * v3;
    v6 = WTF::fastMalloc((944 * v3));
    *(v2 + 8) = v5 / 0x3B0;
    *v2 = v6;
    v7 = *(a2 + 12);
    if (v7)
    {
      v8 = *a2;
      v9 = 944 * v7;
      do
      {
        v6 = (WebCore::MediaTrackConstraintSetMap::MediaTrackConstraintSetMap(v6, v8) + 944);
        v8 = (v8 + 944);
        v9 -= 944;
      }

      while (v9);
    }

    return v2;
  }

  __break(0xC471u);
  return result;
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::prepareAudioDescription(uint64_t a1, void *a2)
{
  v4 = IPC::Semaphore::operator new(8, a2);
  *v4 = 0;
  v4[1] = 0;
  semaphore_create(*MEMORY[0x1E69E9A60], v4 + 1, 0, 0);
  std::unique_ptr<IPC::Semaphore>::reset[abi:sn200100]((a1 + 192), v4);
  v5 = (*(*a2 + 16))(a2);
  if (*(v5 + 16) != 1)
  {
LABEL_9:
    mpark::throw_bad_variant_access(v5);
  }

  v5 = std::optional<WebCore::CAAudioStreamDescription>::operator=[abi:sn200100]<AudioStreamBasicDescription const&,void>((a1 + 96), *(v5 + 1));
  if ((*(a1 + 176) & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  WebCore::CAAudioStreamDescription::sampleRate((a1 + 96));
  WebKit::ProducerSharedCARingBuffer::allocate((a1 + 96), (v6 + v6), v14);
  if (v16)
  {
    v7 = v14[0];
    v14[0] = 0;
    v11 = v7;
    WTF::MachSendRight::MachSendRight();
    v13 = v15;
    v8 = v11;
    v11 = 0;
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100]((a1 + 88), v8);
    if (*(a1 + 224) == 1)
    {
      WTF::MachSendRight::operator=();
      v9 = v13;
    }

    else
    {
      WTF::MachSendRight::MachSendRight();
      v9 = v13;
      *(a1 + 224) = 1;
    }

    *(a1 + 208) = v9;
    WTF::MachSendRight::~MachSendRight(&v12);
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](&v11, 0);
    return std::__optional_destruct_base<WebKit::ProducerSharedCARingBuffer::Pair,false>::~__optional_destruct_base[abi:sn200100](v14);
  }

  else
  {
    result = 385;
    __break(0xC471u);
  }

  return result;
}

WebCore::CAAudioStreamDescription *std::optional<WebCore::CAAudioStreamDescription>::operator=[abi:sn200100]<AudioStreamBasicDescription const&,void>(WebCore::CAAudioStreamDescription *this, const AudioStreamBasicDescription *a2)
{
  if (*(this + 80) == 1)
  {
    WebCore::CAAudioStreamDescription::CAAudioStreamDescription(v4, a2);
    *(this + 8) = *&v4[8];
    *(this + 24) = v5;
    *(this + 5) = v6;
    *(this + 3) = v7;
    *(this + 8) = v8;
    *(this + 18) = v9;
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(v4);
  }

  else
  {
    WebCore::CAAudioStreamDescription::CAAudioStreamDescription(this, a2);
    *(this + 80) = 1;
  }

  return this;
}

uint64_t IPC::Semaphore::operator new(IPC::Semaphore *this, void *a2)
{
  if (this == 8 && IPC::Semaphore::operator new(unsigned long)::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(IPC::Semaphore::operator new(unsigned long)::s_heapRef, a2);
  }

  else
  {
    return bmalloc::api::tzoneAllocateNonCompactSlow();
  }
}

uint64_t WebKit::UserMediaCaptureManagerProxySourceProxy::whenReady(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 80);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v5 = *(a1 + 8);
  atomic_fetch_add(v5, 1u);
  v6 = *a2;
  *a2 = 0;
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F10FE590;
  v7[1] = v5;
  v7[2] = v6;
  v9 = v7;
  (*(*v4 + 56))(v4, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZN6WebKit39UserMediaCaptureManagerProxySourceProxy9whenReadyEONS_17CompletionHandlerIFvRKN7WebCore18CaptureSourceErrorERKNS5_27RealtimeMediaSourceSettingsERKNS5_31RealtimeMediaSourceCapabilitiesEEEEEUlOT_E_vJOS6_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FE590;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZN6WebKit39UserMediaCaptureManagerProxySourceProxy9whenReadyEONS_17CompletionHandlerIFvRKN7WebCore18CaptureSourceErrorERKNS5_27RealtimeMediaSourceSettingsERKNS5_31RealtimeMediaSourceCapabilitiesEEEEEUlOT_E_vJOS6_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10FE590;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZN6WebKit39UserMediaCaptureManagerProxySourceProxy9whenReadyEONS_17CompletionHandlerIFvRKN7WebCore18CaptureSourceErrorERKNS5_27RealtimeMediaSourceSettingsERKNS5_31RealtimeMediaSourceCapabilitiesEEEEEUlOT_E_vJOS6_EE4callESL_(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    ++*(v4 + 16);
    v6 = WebKit::UserMediaCaptureManagerProxySourceProxy::settings(v4);
    v7 = (*(**(v4 + 80) + 128))(*(v4 + 80));
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v8 + 16))(v8, a2, v6, v7);
    result = (*(*v8 + 8))(v8);
    if (*(v4 + 16) == 1)
    {
      v16 = *(*v4 + 8);

      return v16(v4);
    }

    else
    {
      --*(v4 + 16);
    }
  }

  else
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v32 = 7;
    v27 = 4;
    v25 = 0u;
    v26 = 0u;
    memset(v24, 0, sizeof(v24));
    v30 = 0;
    v28 = 0x3FF0000000000000;
    memset(v29, 0, sizeof(v29));
    v18 = 1;
    memset(v17, 0, sizeof(v17));
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    memset(v23, 0, sizeof(v23));
    v10 = *(a1 + 16);
    *(a1 + 16) = 0;
    (*(*v10 + 16))(v10, &v31, v24, v17);
    (*(*v10 + 8))(v10);
    WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(v17, v11);
    v13 = *(&v26 + 1);
    *(&v26 + 1) = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v26;
    *&v26 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = *(&v25 + 1);
    *(&v25 + 1) = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    result = v31;
    v31 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

unsigned int *WebKit::UserMediaCaptureManagerProxySourceProxy::queueAndProcessSerialAction(WTF::RunLoop *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = 0;
  v5 = *(a1 + 174);
  *(a1 + 174) = 0;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    a1 = MEMORY[0x19EB01E30](v5 + 48);
  }

  if (*(v5 + 64))
  {
    if (*(v5 + 64) == 1)
    {
      v6 = v5 + 56;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v6 + 1) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v7)
    {
LABEL_11:
      (*(**a2 + 16))(&v28);
      goto LABEL_28;
    }
  }

  else
  {
    a1 = WTF::Lock::unlockSlow((v5 + 48));
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v9 = WTF::RunLoop::mainSingleton(a1);
  v10 = *a2;
  *a2 = 0;
  v11 = WTF::fastMalloc(0x50);
  while (1)
  {
    v12 = *(v9 + 8);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = *(v9 + 8);
    atomic_compare_exchange_strong_explicit((v9 + 8), &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v13 == v12)
    {
      goto LABEL_18;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
LABEL_18:
  v14 = WTF::fastMalloc(0x10);
  *v14 = &unk_1F10FE5B8;
  v14[1] = v10;
  *(v11 + 2) = 1;
  *(v11 + 2) = v9;
  *(v11 + 24) = 0uLL;
  *(v11 + 5) = "queueAndProcessSerialAction";
  *(v11 + 6) = 0;
  *(v11 + 28) = 0;
  *v11 = &unk_1F10FE5E0;
  *(v11 + 8) = 0;
  *(v11 + 9) = v14;
  atomic_fetch_add((v5 + 8), 1u);
  v23 = v5;
  v25 = 0uLL;
  v26 = "queueAndProcessSerialAction";
  v27 = 0;
  v29[0] = 0;
  v29[1] = 0;
  v29[2] = "<completion promise>";
  v29[3] = 0;
  v15 = WTF::fastMalloc(0x28);
  v30 = WTF::NativePromiseProducer<void,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(v15, 0, v29);
  v16 = *v30;
  if (*v30)
  {
    atomic_fetch_add(v16 + 2, 1u);
  }

  v28 = v16;
  if (v11)
  {
    atomic_fetch_add(v11 + 2, 1u);
    WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::setCompletionPromise(v11, &v30);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v11 + 2);
      (*(*v11 + 8))(v11);
    }
  }

  else
  {
    WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::setCompletionPromise(0, &v30);
  }

  v24 = 0;
  v29[0] = v11;
  WTF::NativePromise<void,void,0u>::maybeSettle(v5, v29, &v25);
  v17 = v29[0];
  v29[0] = 0;
  if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v17 + 2);
    (*(*v17 + 8))(v17);
  }

  if (v30)
  {
    v18 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v30);
    WTF::fastFree(v18, v19);
  }

LABEL_28:
  v20 = v28;
  v28 = 0;
  result = *(v3 + 174);
  *(v3 + 174) = v20;
  if (!result)
  {
    goto LABEL_33;
  }

  if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    (*(*result + 16))(result);
  }

  result = v28;
  v28 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 16))(result);
    if (v7)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_33:
    if (v7)
    {
      goto LABEL_41;
    }
  }

  if (v24)
  {
    v29[0] = v24;
    WTF::NativePromise<void,void,0u>::maybeSettle(v23, v29, &v25);
    v22 = v29[0];
    v29[0] = 0;
    if (v22)
    {
      if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22 + 2);
        (*(*v22 + 8))(v22);
      }
    }
  }

  result = v23;
  if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v23 + 2);
    result = (*(*v23 + 16))(v23);
  }

LABEL_41:
  if (v5)
  {
    if (atomic_fetch_add((v5 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v5 + 8));
      return (*(*v5 + 16))(v5);
    }
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvvLj0EE11whenSettledINS_8FunctionIFNS_3RefIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvNS_6detail15VoidPlaceholderEEEE_SB_JST_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FE5B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIvvLj0EE11whenSettledINS_8FunctionIFNS_3RefIS3_NS_12RawPtrTraitsIS3_EENS_21DefaultRefDerefTraitsIS3_EEEEvEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedIvNS_6detail15VoidPlaceholderEEEE_SB_JST_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE5B8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FE5E0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDB28;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FE5E0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FDB28;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 1);
  v16[0] = a1;
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (v5)
    {
      v8 = "Rejecting";
    }

    else
    {
      v8 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<void,void,0u>,char [11],void const*,char [2]>(v6, 4u, v8, " then() call made from ", (a1 + 24), "[", a2, " callback:", v16, "]");
  }

  v9 = 0;
  v10 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v11 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(&v17);
  if (v11)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromise<void,void,0u>::chainTo(v17, v11, v16);
  }

  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 16))(v12);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v11)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v11);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

uint64_t WTF::NativePromise<void,void,0u>::chainTo(atomic_uchar *a1, unint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = a1 + 48;
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  *(v5 + 112) = 1;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add(v8 + 2, 1u);
  }

  v21 = *(v5 + 64) == 0;
  v9 = WTF::NativePromiseBase::logChannel(a1);
  if (*v9)
  {
    v10 = v9[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [22],WTF::NativePromise<void,void,0u>,char [17],WTF::NativePromise<void,void,0u>,char [12],BOOL,char [2]>(v9, 4u, a3, " invoking chainTo() [", v5, " chainedPromise:", v8, " isNothing:", &v21, "]");
  }

  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8 + 2);
    (*(*v8 + 16))(v8);
  }

  v11 = atomic_load((v5 + 113));
  result = WTF::NativePromiseProducer<void,void,0u>::setDispatchMode(a2, v11, a3);
  if (*(v5 + 64))
  {
    result = WTF::NativePromise<void,void,0u>::settleChainedPromise(v5, a2);
  }

  else
  {
    v13 = *(v5 + 108);
    if (v13 == *(v5 + 104))
    {
      result = WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v5 + 96, v13 + 1, a2);
      v14 = *(v5 + 96) + 40 * *(v5 + 108);
      v15 = *result;
      *result = 0;
      *v14 = v15;
      v16 = *(result + 24);
      *(v14 + 8) = *(result + 8);
      *(v14 + 24) = v16;
    }

    else
    {
      v17 = *(v5 + 96) + 40 * v13;
      v18 = *a2;
      *a2 = 0;
      *v17 = v18;
      v19 = *(a2 + 8);
      *(v17 + 24) = *(a2 + 24);
      *(v17 + 8) = v19;
    }

    ++*(v5 + 108);
  }

  v20 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {
    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromiseProducer<void,void,0u>::setDispatchMode(uint64_t *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v3 = *a1;
  if (*a1)
  {
    atomic_fetch_add((v3 + 8), 1u);
    result = WTF::NativePromise<void,void,0u>::setDispatchMode(v3, a2, a3);
    if (atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v3 + 8));
      v5 = *(*v3 + 16);

      return v5(v3);
    }
  }

  else
  {

    return WTF::NativePromise<void,void,0u>::setDispatchMode(0, a2, a3);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [22],WTF::NativePromise<void,void,0u>,char [17],WTF::NativePromise<void,void,0u>,char [12],BOOL,char [2]>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, const char *a4, uint64_t a5, const char *a6, uint64_t a7, const char *a8, uint64_t a9, const char *a10)
{
  v67[1] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v55, this);
  WTF::String::String(&v54, a4);
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a5, &v53);
  v43 = a6;
  WTF::String::String(&v52, a6);
  v44 = a7;
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a7, &v51);
  v45 = a8;
  WTF::String::String(&v50, a8);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  WTF::String::String(&v48, a10);
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v55, &v54, &v53, &v52, &v51, &v50, &v49, &v48, &v56);
  if (v56)
  {
    v19 = v48;
    v48 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }

    v20 = v49;
    v49 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v18);
    }

    v21 = v50;
    v50 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v18);
    }

    v22 = v51;
    v51 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v18);
    }

    v23 = v52;
    v52 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v18);
    }

    v24 = v53;
    v53 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v18);
    }

    v25 = v54;
    v54 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v18);
    }

    v26 = v55;
    v55 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v18);
    }

    v27 = *(a1 + 32);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      WTF::String::utf8();
      v30 = v47[0] ? v47[0] + 16 : 0;
      *buf = 136446210;
      v58 = v30;
      _os_log_impl(&dword_19D52D000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v28 = v47[0];
      v47[0] = 0;
      if (v28)
      {
        if (*v28 == 1)
        {
          v28 = WTF::fastFree(v28, v29);
        }

        else
        {
          --*v28;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v31 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v32 = *v31;
        if (v32)
        {
          break;
        }

        v33 = *v31;
        atomic_compare_exchange_strong_explicit(v31, &v33, v32 | 1, memory_order_acquire, memory_order_acquire);
        if (v33 == v32)
        {
          v34 = WTF::Logger::observers(v28);
          v35 = *(v34 + 12);
          if (v35)
          {
            v36 = *v34;
            v37 = *v34 + 8 * v35;
            do
            {
              v38 = *v36;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v58 + 4), this);
              v59 = 0;
              WTF::String::String(v60, a4);
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a5, &v61);
              v62 = 0;
              WTF::String::String(v63, v43);
              v63[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(v44, &v64);
              v65 = 0;
              WTF::String::String(v66, v45);
              v66[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v66[6] = 0;
              WTF::String::String(v67, a10);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v47, buf, 8uLL);
              (*(*v38 + 16))(v38, a1, a2, v47);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v47, v39);
              for (i = 120; i != -8; i -= 16)
              {
                v41 = *&buf[i];
                *&buf[i] = 0;
                if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v41, v29);
                }
              }

              ++v36;
            }

            while (v36 != v37);
          }

          v42 = 1;
          atomic_compare_exchange_strong_explicit(v31, &v42, 0, memory_order_release, memory_order_relaxed);
          if (v42 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v56;
    v56 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v29);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WTF::NativePromise<void,void,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v9 = *(result + 16) >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [39],WTF::NativePromise<void,void,0u>>(result, 4u, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, (v5 + 113));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

unint64_t WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 40 * *(a1 + 12) <= a3)
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

    WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,void,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  if (a2 < 0x6666667)
  {
    v2 = result;
    v3 = *result;
    v4 = *(result + 12);
    v5 = 40 * a2;
    v6 = WTF::fastMalloc((40 * a2));
    *(v2 + 8) = v5 / 0x28;
    *v2 = v6;
    if (v4)
    {
      v8 = v6;
      v9 = v3;
      do
      {
        v10 = *v9;
        *v9 = 0;
        *v8 = v10;
        v11 = *(v9 + 1);
        *(v8 + 24) = *(v9 + 3);
        *(v8 + 8) = v11;
        v8 += 40;
        v9 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v9) + 5;
      }

      while (v9 != (v3 + 40 * v4));
    }

    if (v3)
    {
      if (*v2 == v3)
      {
        *v2 = 0;
        *(v2 + 8) = 0;
      }

      WTF::fastFree(v3, v7);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

atomic_uint **WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::setCompletionPromise(uint64_t a1, atomic_uint ***a2)
{
  v4 = 0;
  v5 = (a1 + 57);
  v6 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v7 = *a2;
  *a2 = 0;
  result = std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), v7);
  atomic_compare_exchange_strong_explicit(v5, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t WTF::NativePromiseProducer<void,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = WTF::fastMalloc(0x78);
  v7 = WTF::NativePromise<void,void,0u>::NativePromise(v6, a3);
  *a1 = v7;
  v8 = *a3;
  *(a1 + 24) = *(a3 + 1);
  *(a1 + 8) = v8;
  v9 = (v7 + 8);
  atomic_fetch_add((v7 + 8), 1u);
  WTF::NativePromise<void,void,0u>::setDispatchMode(v7, a2, a3);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromiseBase::log<char [10],WTF::NativePromise<void,void,0u>>(WTF::NativePromiseBase *a1, uint64_t a2)
{
  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v5 = *(result + 16) >= 4u;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    return WTF::Logger::log<char [10],WTF::NativePromise<void,void,0u>>(result, 4, a1, a2);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [10],WTF::NativePromise<void,void,0u>>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v34[2] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v30, a3);
  WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a4, &v29);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v10 = v29;
    v29 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v30;
    v30 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v28[0];
      v28[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::String::String(&buf[8], a3);
              v33 = 0;
              WTF::LogArgument<WTF::NativePromise<void,void,0u>>::toString(a4, v34);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v23 + 16))(v23, a1, a2, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v24);
              for (i = 24; i != -8; i -= 16)
              {
                v26 = *&buf[i];
                *&buf[i] = 0;
                if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v26, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v27 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
          if (v27 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v31;
    v31 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxySourceProxy::applyConstraints(WebCore::MediaConstraints &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&)>)::{lambda(void)#1},WTF::Ref<WTF::NativePromise<void,void,0u>,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FE638;
  v3 = a1[123];
  a1[123] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 120), a2);
  WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap((a1 + 2), v4);
  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v5);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxySourceProxy::applyConstraints(WebCore::MediaConstraints &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&)>)::{lambda(void)#1},WTF::Ref<WTF::NativePromise<void,void,0u>,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FE638;
  v3 = a1[123];
  a1[123] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WTF::Vector<WebCore::MediaTrackConstraintSetMap,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 120), a2);
  WebCore::MediaTrackConstraintSetMap::~MediaTrackConstraintSetMap((a1 + 2), v4);
  v6 = a1[1];
  a1[1] = 0;
  if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v6);
    WTF::fastFree(v6, v5);
  }

  return WTF::fastFree(a1, v5);
}

WTF::Lock *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxySourceProxy::applyConstraints(WebCore::MediaConstraints &&,WTF::CompletionHandler<void ()(std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&)>)::{lambda(void)#1},WTF::Ref<WTF::NativePromise<void,void,0u>,WTF::RawPtrTraits<WTF::Ref>,WTF::DefaultRefDerefTraits<WTF::Ref>>>::call@<X0>(uint64_t a1@<X0>, unsigned __int8 **a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    ++*(v5 + 16);
    v6 = *(v5 + 80);
    (**v6)(v6);
    if (v6[128])
    {
      v7 = *(v5 + 44);
      WebKit::UserMediaCaptureManagerProxySourceProxy::unobserveMedia(v5);
      v8 = *(a1 + 8);
      *(a1 + 8) = 0;
      v9 = *(a1 + 984);
      *(a1 + 984) = 0;
      v10 = WTF::fastMalloc(0x28);
      *v10 = &unk_1F10FE660;
      *(v10 + 8) = v8;
      *(v10 + 16) = a1 + 16;
      *(v10 + 24) = v7;
      *(v10 + 32) = v9;
      v16 = v10;
      (*(*v6 + 168))(v6, a1 + 16, &v16);
      v11 = v16;
      v16 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    else
    {
      (*(*v6 + 168))(v6, a1 + 16, a1 + 984);
    }

    v16 = 0;
    v17 = 0;
    v18 = "operator()";
    v19 = 0;
    WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(&v16, a2);
    result = (*(*v6 + 8))(v6);
    if (*(v5 + 16) == 1)
    {
      return (*(*v5 + 8))(v5);
    }

    else
    {
      --*(v5 + 16);
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v17 = 0;
    LOBYTE(v18) = 1;
    v12 = *(a1 + 984);
    *(a1 + 984) = 0;
    (*(*v12 + 16))(v12, &v16);
    (*(*v12 + 8))(v12);
    if (v18 == 1)
    {
      v14 = v17;
      v17 = 0;
      if (v14)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v13);
        }
      }
    }

    v16 = 0;
    v17 = 0;
    v18 = "operator()";
    v19 = 0;
    return WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(&v16, a2);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit39UserMediaCaptureManagerProxySourceProxy16applyConstraintsEON7WebCore16MediaConstraintsENS_17CompletionHandlerIFvONSt3__18optionalINS4_19RealtimeMediaSource21ApplyConstraintsErrorEEEEEEENUlvE_clEvEUlOT_E_vJSD_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FE660;
  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit39UserMediaCaptureManagerProxySourceProxy16applyConstraintsEON7WebCore16MediaConstraintsENS_17CompletionHandlerIFvONSt3__18optionalINS4_19RealtimeMediaSource21ApplyConstraintsErrorEEEEEEENUlvE_clEvEUlOT_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10FE660;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit39UserMediaCaptureManagerProxySourceProxy16applyConstraintsEON7WebCore16MediaConstraintsENS_17CompletionHandlerIFvONSt3__18optionalINS4_19RealtimeMediaSource21ApplyConstraintsErrorEEEEEEENUlvE_clEvEUlOT_E_vJSD_EE4callESD_(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    ++v4[4];
    if ((*(a2 + 16) & 1) == 0)
    {
      WebKit::UserMediaCaptureManagerProxySourceProxy::updateVideoConstraints(v4, *(a1 + 16));
      LOBYTE(v15) = 0;
      v20 = 0;
      std::__optional_storage_base<WebCore::RealtimeMediaSourceSettings,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RealtimeMediaSourceSettings,false>>((v4 + 72), &v15);
      if (v20 == 1)
      {
        v7 = v19;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v6);
        }

        v8 = v18;
        if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, v6);
        }

        v9 = v17;
        if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, v6);
        }
      }
    }

    if (*(a1 + 24) == 1)
    {
      WebKit::UserMediaCaptureManagerProxySourceProxy::observeMedia(v4);
    }

    v10 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(*v10 + 16))(v10, a2);
    result = (*(*v10 + 8))(v10);
    if (v4[4] == 1)
    {
      v14 = *(*v4 + 8);

      return v14(v4);
    }

    else
    {
      --v4[4];
    }
  }

  else
  {
    LOBYTE(v15) = 0;
    *(&v15 + 1) = 0;
    v16 = 1;
    v12 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(*v12 + 16))(v12, &v15);
    result = (*(*v12 + 8))(v12);
    if (v16 == 1)
    {
      result = *(&v15 + 1);
      *(&v15 + 1) = 0;
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

unsigned int *WTF::Vector<WebCore::VideoFacingMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(unsigned int *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = a1[3];
    v5 = *(a2 + 12);
    if (v4 <= v5)
    {
      if (v5 > a1[2])
      {
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(a1, 0);
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, *(a2 + 12));
        v4 = a1[3];
      }
    }

    else
    {
      a1[3] = v5;
      v4 = v5;
    }

    if (v4)
    {
      memmove(*a1, *a2, v4);
      v6 = a1[3];
    }

    else
    {
      v6 = 0;
    }

    memcpy((*a1 + v6), (*a2 + v6), *(a2 + 12) - v6);
    a1[3] = *(a2 + 12);
  }

  return a1;
}

uint64_t mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 24) != 255)
  {
    if (*(a1 + 24))
    {
      v5 = *a1;
      *a1 = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }
    }

    else
    {
      v3 = *(a1 + 16);
      *(a1 + 16) = 0;
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v3, a2);
      }

      v4 = *a1;
      if (*a1)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        WTF::fastFree(v4, a2);
      }
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::NativePromiseProducer<std::enable_if<true,void>>(uint64_t a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = WTF::fastMalloc(0x90);
  v7 = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::NativePromise(v6, a3);
  *a1 = v7;
  v8 = *a3;
  *(a1 + 24) = *(a3 + 1);
  *(a1 + 8) = v8;
  v9 = (v7 + 8);
  atomic_fetch_add((v7 + 8), 1u);
  WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::setDispatchMode(v7, a2, a3);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);
    (*(*v6 + 16))(v6);
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  result = WTF::NativePromiseBase::logChannel(a1);
  if (*result)
  {
    v9 = *(result + 16) >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(result, 4u, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, (v5 + 137));
  v10 = 1;
  atomic_compare_exchange_strong_explicit((v5 + 48), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FE688;
  v3 = a2[1];
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  *(a1 + 48) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 112;
  *(a1 + 104) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v4 = WTF::NativePromiseBase::logChannel(a1);
  if (*v4 && v4[16] >= 4u)
  {
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v4, 4, "creating ", a1);
  }

  return a1;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::assertIsDead(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = (result + 48);
  atomic_compare_exchange_strong_explicit((result + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  v4 = *(v1 + 132);
  if (v4)
  {
    v5 = *(v1 + 120);
    v6 = 40 * v4;
    do
    {
      result = WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::assertIsDead(v5);
      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v7 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
  v2 = WTF::NativePromiseBase::logChannel(a1);
  if (*v2)
  {
    v3 = v2[16] >= 4u;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v2, 4, "destroying ", a1);
  }

  WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 120, v4);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v5);
  if (*(a1 + 88) > 1u)
  {
    if (*(a1 + 88) == 2)
    {
      v7 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }

  else if (*(a1 + 88))
  {
    mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(a1 + 56, v6);
  }

  *(a1 + 88) = -1;
  return a1;
}

atomic_uint **WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(v4) + 5;
      v5 -= 40;
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

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxySourceProxy::takePhoto(WebCore::PhotoSettings &&)::{lambda(void)#1},WTF::Ref<WTF::NativePromise<void,void,0u>,WTF::RawPtrTraits<WTF::NativePromise>,WTF::DefaultRefDerefTraits<WTF::NativePromise>>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FE6B0;
  WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer((a1 + 64));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return a1;
}

{
  *a1 = &unk_1F10FE6B0;
  WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer((a1 + 64));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, v2);
  }

  return WTF::fastFree(a1, v2);
}

unsigned int *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxySourceProxy::takePhoto(WebCore::PhotoSettings &&)::{lambda(void)#1},WTF::Ref<WTF::NativePromise<void,void,0u>,WTF::RawPtrTraits<WTF::NativePromise>,WTF::DefaultRefDerefTraits<WTF::NativePromise>>>::call@<X0>(uint64_t a1@<X0>, unsigned __int8 **a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4 || (v5 = *(v4 + 8)) == 0)
  {
    v38 = "Track has ended";
    *&v39 = 16;
    v33 = 0;
    v34 = 0;
    *&v35 = "operator()";
    *(&v35 + 1) = 0;
    isNothing = WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::isNothing((a1 + 64));
    v27 = *(a1 + 64);
    if (isNothing)
    {
      if (!v27)
      {
        WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::reject<WTF::ASCIILiteral,std::enable_if<true,void>>(0, &v38, &v33);
        goto LABEL_43;
      }

      atomic_fetch_add(v27 + 2, 1u);
      WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::reject<WTF::ASCIILiteral,std::enable_if<true,void>>(v27, &v38, &v33);
      if (atomic_fetch_add(v27 + 2, 0xFFFFFFFF) != 1)
      {
LABEL_43:
        v33 = 0;
        v34 = 0;
        v35 = "operator()";
        return WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(&v33, a2);
      }
    }

    else
    {
      if (v27)
      {
        atomic_fetch_add(v27 + 2, 1u);
      }

      v28 = WTF::NativePromiseBase::logChannel(isNothing);
      if (*v28 && v28[16] >= 4u)
      {
        WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v28, 4u, &v33, " ignored already resolved or rejected ", v27);
      }

      if (!v27 || atomic_fetch_add(v27 + 2, 0xFFFFFFFF) != 1)
      {
        goto LABEL_43;
      }
    }

    atomic_store(1u, v27 + 2);
    (*(*v27 + 16))(v27);
    goto LABEL_43;
  }

  ++*(v5 + 16);
  v6 = (*(**(v5 + 80) + 144))(&v32);
  v7 = v32;
  v8 = WTF::RunLoop::mainSingleton(v6);
  v9 = *(a1 + 64);
  *(a1 + 64) = 0;
  v30 = *(a1 + 72);
  v31 = *(a1 + 88);
  v29 = 0;
  v38 = v9;
  v39 = *(a1 + 72);
  v40 = *(a1 + 88);
  v10 = WTF::fastMalloc(0x50);
  while (1)
  {
    v11 = *(v8 + 8);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v8 + 8);
    atomic_compare_exchange_strong_explicit((v8 + 8), &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v12 == v11)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v8 + 8));
LABEL_8:
  v13 = WTF::fastMalloc(0x30);
  *v13 = &unk_1F10FE700;
  *(v13 + 8) = v9;
  v38 = 0;
  v14 = v40;
  *(v13 + 16) = v39;
  *(v13 + 32) = v14;
  *(v10 + 8) = 1;
  *(v10 + 16) = v8;
  *(v10 + 24) = 0uLL;
  *(v10 + 40) = "operator()";
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  *v10 = &unk_1F10FE728;
  *(v10 + 64) = 0;
  *(v10 + 72) = v13;
  atomic_fetch_add((v7 + 8), 1u);
  v33 = v7;
  v34 = v10;
  v35 = 0uLL;
  v36 = "operator()";
  v37 = 0;
  WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(&v38);
  v38 = 0;
  *&v39 = 0;
  *(&v39 + 1) = "<completion promise>";
  *&v40 = 0;
  v15 = WTF::fastMalloc(0x28);
  v41 = WTF::NativePromiseProducer<void,void,0u>::NativePromiseProducer<std::enable_if<true,void>>(v15, 0, &v38);
  v16 = *v41;
  if (!*v41)
  {
    *a2 = 0;
LABEL_10:
    atomic_fetch_add((v10 + 8), 1u);
    WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::setCompletionPromise(v10, &v41);
    if (atomic_fetch_add((v10 + 8), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, (v10 + 8));
      (*(*v10 + 8))(v10);
    }

    goto LABEL_12;
  }

  atomic_fetch_add(v16 + 2, 1u);
  v10 = v34;
  *a2 = v16;
  if (v10)
  {
    goto LABEL_10;
  }

  WTF::NativePromise<void,void,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::setCompletionPromise(0, &v41);
LABEL_12:
  v17 = v34;
  v34 = 0;
  v38 = v17;
  WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::maybeSettle(v33, &v38, &v35);
  v18 = v38;
  v38 = 0;
  if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v18 + 2);
    (*(*v18 + 8))(v18);
  }

  if (v41)
  {
    v19 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v41);
    WTF::fastFree(v19, v20);
  }

  v21 = v34;
  if (v34)
  {
    v34 = 0;
    v38 = v21;
    WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::maybeSettle(v33, &v38, &v35);
    v22 = v38;
    v38 = 0;
    if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v22 + 2);
      (*(*v22 + 8))(v22);
    }

    v23 = v34;
    v34 = 0;
    if (v23 && atomic_fetch_add(v23 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v23 + 2);
      (*(*v23 + 8))(v23);
    }
  }

  v24 = v33;
  v33 = 0;
  if (v24 && atomic_fetch_add(v24 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v24 + 2);
    (*(*v24 + 16))(v24);
  }

  WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(&v29);
  result = v32;
  v32 = 0;
  if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result + 2);
    result = (*(*result + 16))(result);
  }

  if (*(v5 + 16) == 1)
  {
    return (*(*v5 + 8))(v5);
  }

  --*(v5 + 16);
  return result;
}

BOOL WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::isNothing(atomic_uint **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  atomic_fetch_add(v1 + 2, 1u);
  v2 = !WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::isSettled(v1);
  if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v1 + 2);
    (*(*v1 + 16))(v1);
  }

  return v2;
}

WTF::StringImpl *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::reject<WTF::ASCIILiteral,std::enable_if<true,void>>(uint64_t a1, _OWORD *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v48[2] = *MEMORY[0x1E69E9840];
  v7 = (a1 + 48);
  v38 = v7;
  v39 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v8;
    WTF::Logger::LogSiteIdentifier::toString(&v43, a3);
    WTF::String::String(&v42, " rejecting ");
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, &v41);
    WTF::makeString<WTF::String,WTF::String,WTF::String>(&v43, &v42, &v41, &v44);
    v12 = v41;
    v41 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v42;
    v42 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v11);
    }

    v14 = v43;
    v43 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v11);
    }

    v15 = *(v10 + 4);
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      WTF::String::utf8();
      v18 = v40[0] ? v40[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&dword_19D52D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v16 = v40[0];
      v40[0] = 0;
      if (v16)
      {
        if (*v16 == 1)
        {
          v16 = WTF::fastFree(v16, v17);
        }

        else
        {
          --*v16;
        }
      }
    }

    if (*v10 && v10[16] >= 4u)
    {
      v19 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v20 = *v19;
        if (v20)
        {
          break;
        }

        v21 = *v19;
        atomic_compare_exchange_strong_explicit(v19, &v21, v20 | 1, memory_order_acquire, memory_order_acquire);
        if (v21 == v20)
        {
          v22 = WTF::Logger::observers(v16);
          v23 = *(v22 + 12);
          if (v23)
          {
            v24 = *v22;
            v25 = *v22 + 8 * v23;
            do
            {
              v26 = *v24;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], a3);
              v46 = 0;
              WTF::String::String(v47, " rejecting ");
              v47[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, v48);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v40, buf, 3uLL);
              (*(*v26 + 16))(v26, v10, 4, v40);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v40, v27);
              for (i = 40; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v17);
                }
              }

              ++v24;
            }

            while (v24 != v25);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v19, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v31 = v44;
    v44 = 0;
    if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v31, v17);
    }
  }

  *buf = *a2;
  std::__tuple_leaf<1ul,WTF::String,false>::__tuple_leaf[abi:sn200100]<WTF::ASCIILiteral,0>(v40, buf);
  if (*(a1 + 88) > 1u)
  {
    if (*(a1 + 88) == 2)
    {
      v33 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }
    }
  }

  else if (*(a1 + 88))
  {
    mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(a1 + 56, v32);
  }

  v34 = v40[0];
  v40[0] = 0;
  *(a1 + 56) = v34;
  *(a1 + 80) = 1;
  *(a1 + 88) = 1;
  WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::dispatchAll(a1, &v38);
  result = v40[0];
  v40[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v35);
  }

  v37 = v39;
  if (v39 == 1)
  {
    result = v38;
    atomic_compare_exchange_strong_explicit(v38, &v37, 0, memory_order_release, memory_order_relaxed);
    if (v37 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

BOOL WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::isSettled(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 88);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 != 0;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 96));
  v4 = *(a1 + 108);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 96), (*(a1 + 96) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 96), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 120);
  v18 = v7;
  v8 = *(a1 + 132);
  LODWORD(v19) = *(a1 + 128);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  WTF::Vector<WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

unsigned __int8 *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 137)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v18[0] = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", v18, " callSite:", (v5 + 24), "]");
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::takeResultRunnable(a2, &v17);
        (*(*v17 + 16))(v18);
        (*(*v5 + 24))(v5, a2, v18);
        mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v18, v13);
        v14 = v17;
        v17 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      else
      {
        WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::takeResult(a2, v18);
        (*(*v5 + 24))(v5, a2, v18);
        mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v18, v15);
      }

      v16 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (v16)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10FE6D8;
    v8[1] = v5;
    v8[2] = a2;
    v18[0] = v8;
    (*(*v7 + 16))(v7, v18);
    result = v18[0];
    v18[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  v9 = v2;
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settleAsChainedPromise<WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::Storage>(v2, a1 + 56, &v5);
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settleAsChainedPromise<WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::Storage>(0, a1 + 56, &v5);
  }

  return WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(&v9);
}

BOOL WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 88);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 2;
}

atomic_uchar *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::takeResultRunnable@<X0>(atomic_uchar *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[88] != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(v2 + 7);
  *(v2 + 7) = 0;
  *a2 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::takeResult@<X0>(atomic_uchar *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = 0;
  v5 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  if (v2[88] != 1)
  {
    mpark::throw_bad_variant_access(a1);
  }

  result = mpark::detail::move_assignment<mpark::detail::traits<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>,(mpark::detail::Trait)1>::move_assignment(a2, v2 + 7);
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t mpark::detail::move_assignment<mpark::detail::traits<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>,(mpark::detail::Trait)1>::move_assignment(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  v3 = *(a2 + 24);
  if (v3 != 255)
  {
    v4 = a2;
    if (*(a2 + 24))
    {
      v5 = a1;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
      v5 = (a1 + 16);
      LOBYTE(v3) = *(v4 + 24);
      v4 += 2;
    }

    v6 = *v4;
    *v4 = 0;
    *v5 = v6;
    *(a1 + 24) = v3;
  }

  return a1;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FE6D8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FE6D8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*(*a1 + 56) == 1)
  {
    v12[0] = *a1;
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", v12, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::hasRunnable(a1[1]);
    v7 = *a1;
    v8 = a1[1];
    if (hasRunnable)
    {
      WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::takeResultRunnable(v8, &v11);
      (*(*v11 + 16))(v12);
      (*(*v7 + 24))(v7, v8, v12);
      mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v12, v9);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::takeResult(v8, v12);
      (*(*v7 + 24))(v7, v8, v12);
      return mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v12, v10);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settleAsChainedPromise<WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::Storage>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v17 = v7;
  v18 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v10 = v8[16] >= 4u;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling chained promise ", a1);
  }

  v11 = *(a1 + 88);
  v12 = *(a2 + 32);
  if (v11 != 255 || v12 != 255)
  {
    v13 = (a1 + 56);
    if (v12 == 255)
    {
      if (*(a1 + 88) > 1u)
      {
        if (v11 == 2)
        {
          v14 = *v13;
          *v13 = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }
        }
      }

      else if (*(a1 + 88))
      {
        mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(a1 + 56, v9);
      }

      *(a1 + 88) = -1;
    }

    else
    {
      v19 = a1 + 56;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF13NativePromiseINSt3__14pairINS6_6VectorIhLm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEENS6_6StringEEESE_Lj0EE7Storage8NoResultENSt12experimental15fundamentals_v38expectedISF_SE_EENS6_8FunctionIFSM_vEEEEEEE14generic_assignINS0_15move_assignmentISQ_LNS0_5TraitE1EEEEEvOT_EUlRSW_OT0_E_JRSR_SV_EEEDcmSX_DpOT0_(v12, &v19, v13, a2);
    }
  }

  result = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::dispatchAll(a1, &v17);
  v16 = v18;
  if (v18 == 1)
  {
    result = v17;
    atomic_compare_exchange_strong_explicit(v17, &v16, 0, memory_order_release, memory_order_relaxed);
    if (v16 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

WTF::StringImpl *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF13NativePromiseINSt3__14pairINS6_6VectorIhLm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEENS6_6StringEEESE_Lj0EE7Storage8NoResultENSt12experimental15fundamentals_v38expectedISF_SE_EENS6_8FunctionIFSM_vEEEEEEE14generic_assignINS0_15move_assignmentISQ_LNS0_5TraitE1EEEEEvOT_EUlRSW_OT0_E_JRSR_SV_EEEDcmSX_DpOT0_(WTF::StringImpl *result, uint64_t *a2, WTF::StringImpl *a3, uint64_t *a4)
{
  v5 = *a2;
  v6 = *(*a2 + 32);
  if (result == 2)
  {
    if (*(*a2 + 32) > 1u)
    {
      if (v6 != 255)
      {
        v10 = *a4;
        *a4 = 0;
        result = *a3;
        *a3 = v10;
        if (result)
        {
          v11 = *(*result + 8);

          return v11();
        }

        return result;
      }
    }

    else if (*(*a2 + 32))
    {
      result = mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(*a2, a2);
    }

    v9 = *a4;
    *a4 = 0;
    *v5 = v9;
    v8 = 2;
    goto LABEL_20;
  }

  if (result == 1)
  {
    if (*(*a2 + 32) > 1u)
    {
      if (v6 == 2)
      {
        v7 = *v5;
        *v5 = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }
    }

    else if (*(*a2 + 32))
    {

      return std::experimental::fundamentals_v3::expected<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::operator=(a3, a4);
    }

    *(v5 + 32) = -1;
    result = mpark::detail::move_assignment<mpark::detail::traits<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>,(mpark::detail::Trait)1>::move_assignment(v5, a4);
    v8 = 1;
LABEL_20:
    *(v5 + 32) = v8;
    return result;
  }

  if (*(*a2 + 32) > 1u)
  {
    if (v6 == 2)
    {
      result = *v5;
      *v5 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  else
  {
    if (!*(*a2 + 32))
    {
      return result;
    }

    result = mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(*a2, a2);
  }

  *(v5 + 32) = 0;
  return result;
}

WTF::StringImpl *std::experimental::fundamentals_v3::expected<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::operator=(WTF::StringImpl *a1, uint64_t *a2)
{
  mpark::detail::move_assignment<mpark::detail::traits<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>,(mpark::detail::Trait)1>::move_assignment(v6, a2);
  mpark::detail::move_assignment<mpark::detail::traits<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>,(mpark::detail::Trait)1>::move_assignment(v7, v6);
  mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::operator=(v6, a1);
  mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::operator=(a1, v7);
  mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v7, v3);
  mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v6, v4);
  return a1;
}

uint64_t mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::operator=(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  if (v3 != 255 || v4 != 255)
  {
    if (v4 == 255)
    {
      if (v3 != 255)
      {
        if (v3)
        {
          v7 = *a1;
          *a1 = 0;
          if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v7, a2);
          }
        }

        else
        {
          v5 = *(a1 + 16);
          *(a1 + 16) = 0;
          if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }

          v6 = *a1;
          if (*a1)
          {
            *a1 = 0;
            *(a1 + 8) = 0;
            WTF::fastFree(v6, a2);
          }
        }
      }

      *(a1 + 24) = -1;
    }

    else
    {
      v9 = a1;
      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJNSt3__14pairIN3WTF6VectorIhLm0ENS8_15CrashOnOverflowELm16ENS8_10FastMallocEEENS8_6StringEEESD_EEEE14generic_assignINS0_15move_assignmentISF_LNS0_5TraitE1EEEEEvOT_EUlRSL_OT0_E_JRSG_SK_EEEDcmSM_DpOT0_(v4, &v9, a1, a2);
    }
  }

  return a1;
}

WTF::StringImpl *_ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJNSt3__14pairIN3WTF6VectorIhLm0ENS8_15CrashOnOverflowELm16ENS8_10FastMallocEEENS8_6StringEEESD_EEEE14generic_assignINS0_15move_assignmentISF_LNS0_5TraitE1EEEEEvOT_EUlRSL_OT0_E_JRSG_SK_EEEDcmSM_DpOT0_(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t *a3, WTF::StringImpl *a4)
{
  v5 = *a2;
  v6 = *(*a2 + 24);
  if (result)
  {
    if (*(*a2 + 24))
    {
      if (v6 != 255)
      {
        if (v6 == 1)
        {
          v7 = *a4;
          *a4 = 0;
          result = *a3;
          *a3 = v7;
          if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {

            return WTF::StringImpl::destroy(result, a2);
          }

          return result;
        }

        result = *v5;
        *v5 = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }
    }

    else
    {
      v8 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v8, a2);
      }

      result = *v5;
      if (*v5)
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        result = WTF::fastFree(result, a2);
      }
    }

    v9 = *a4;
    *a4 = 0;
    *v5 = v9;
    *(v5 + 24) = 1;
    return result;
  }

  if (v6 == 255)
  {
LABEL_27:
    *(v5 + 24) = -1;
    *v5 = 0;
    *(v5 + 8) = 0;
    result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v5, a4);
    v11 = *(a4 + 2);
    *(a4 + 2) = 0;
    *(v5 + 16) = v11;
    *(v5 + 24) = 0;
    return result;
  }

  if (*(*a2 + 24))
  {
    v10 = *v5;
    *v5 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }

    goto LABEL_27;
  }

  return std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>::operator=[abi:sn200100](a3, a4);
}

uint64_t std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>::operator=[abi:sn200100](uint64_t a1, uint64_t *a2)
{
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  v5 = a2[2];
  a2[2] = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEES9_Lj0EE11whenSettledIZZN6WebKit39UserMediaCaptureManagerProxySourceProxy9takePhotoEON7WebCore13PhotoSettingsEENUlvE_clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESK_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISA_S9_EEE_NS_3RefINS2_IvvLj0EEENS_12RawPtrTraitsIS10_EENS_21DefaultRefDerefTraitsIS10_EEEEJSX_EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F10FE700;
  WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEES9_Lj0EE11whenSettledIZZN6WebKit39UserMediaCaptureManagerProxySourceProxy9takePhotoEON7WebCore13PhotoSettingsEENUlvE_clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESK_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISA_S9_EEE_NS_3RefINS2_IvvLj0EEENS_12RawPtrTraitsIS10_EENS_21DefaultRefDerefTraitsIS10_EEEEJSX_EED0Ev(atomic_uint **a1)
{
  *a1 = &unk_1F10FE700;
  WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

WTF::Lock *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEES9_Lj0EE11whenSettledIZZN6WebKit39UserMediaCaptureManagerProxySourceProxy9takePhotoEON7WebCore13PhotoSettingsEENUlvE_clEvEUlOT_E_EEDaRNS_34GuaranteedSerialFunctionDispatcherESK_RKNS_6Logger17LogSiteIdentifierEEUlONSt12experimental15fundamentals_v38expectedISA_S9_EEE_NS_3RefINS2_IvvLj0EEENS_12RawPtrTraitsIS10_EENS_21DefaultRefDerefTraitsIS10_EEEEJSX_EE4callESX_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 **a3@<X8>)
{
  v11 = 0;
  v12 = 0;
  v13 = "operator()";
  v14 = 0;
  isNothing = WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::isNothing((a1 + 8));
  v7 = *(a1 + 8);
  if (isNothing)
  {
    if (!v7)
    {
      WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settle<std::experimental::fundamentals_v3::expected<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>>(0, a2, &v11);
      goto LABEL_15;
    }

    atomic_fetch_add(v7 + 2, 1u);
    WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settle<std::experimental::fundamentals_v3::expected<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>>(v7, a2, &v11);
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
    }

    v8 = WTF::NativePromiseBase::logChannel(isNothing);
    if (*v8)
    {
      v9 = v8[16] >= 4u;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, &v11, " ignored already resolved or rejected ", v7);
    }

    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
LABEL_16:
      atomic_store(1u, v7 + 2);
      (*(*v7 + 16))(v7);
    }
  }

LABEL_15:
  v11 = 0;
  v12 = 0;
  v13 = "operator()";
  v14 = 0;
  return WTF::NativePromise<void,void,0u>::createAndResolve<std::enable_if<true,void>>(&v11, a3);
}

WTF::Lock *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::settle<std::experimental::fundamentals_v3::expected<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v20 = v7;
  v21 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    v7 = MEMORY[0x19EB01E30]();
  }

  v8 = WTF::NativePromiseBase::logChannel(v7);
  if (*v8)
  {
    v9 = v8[16] >= 4u;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v8 = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling ", a1);
  }

  v10 = *(a2 + 24);
  if (v10 == 1)
  {
    WTF::String::isolatedCopy();
  }

  else
  {
    if (*(a2 + 24))
    {
      mpark::throw_bad_variant_access(v8);
    }

    v11 = *a2;
    v12 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = 0;
    WTF::String::isolatedCopy();
    v18[0] = v11;
    v18[1] = v12;
  }

  v19 = v10;
  if (*(a1 + 88) > 1u)
  {
    if (*(a1 + 88) == 2)
    {
      v14 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }
    }
  }

  else if (*(a1 + 88))
  {
    mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(a1 + 56, v13);
  }

  *(a1 + 88) = -1;
  mpark::detail::move_assignment<mpark::detail::traits<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>,(mpark::detail::Trait)1>::move_assignment(a1 + 56, v18);
  v15 = 1;
  *(a1 + 88) = 1;
  WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::dispatchAll(a1, &v20);
  result = mpark::variant<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String>::~variant(v18, v16);
  if (v21 == 1)
  {
    result = v20;
    atomic_compare_exchange_strong_explicit(v20, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FE728;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE758;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FE728;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE758;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallback<true,WTF::NativePromise<void,void,0u>>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v16[0] = a1;
  v6 = WTF::NativePromiseBase::logChannel(a1);
  if (*v6)
  {
    v7 = v6[16] >= 4u;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (v5)
    {
      v8 = "Rejecting";
    }

    else
    {
      v8 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>,char [11],void const*,char [2]>(v6, v8, (a1 + 24), a2);
  }

  v9 = 0;
  v10 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v9, 1u, memory_order_acquire, memory_order_acquire);
  if (v9)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v11 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(&v17);
  if (v11)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromise<void,void,0u>::chainTo(v17, v11, v16);
  }

  v12 = v17;
  v17 = 0;
  if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v12 + 2);
    (*(*v12 + 16))(v12);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v11)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v11);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>,char [11],void const*,char [2]>(uint64_t a1, const char *a2, WTF::Logger::LogSiteIdentifier *a3, uint64_t a4)
{
  v56[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v44, a2);
  WTF::String::String(&v43, " then() call made from ");
  v34 = a3;
  WTF::Logger::LogSiteIdentifier::toString(&v42, a3);
  WTF::String::String(&v41, "[");
  v35 = a4;
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a4, &v40);
  WTF::String::String(&v39, " callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v37, "]");
  result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v44, &v43, &v42, &v41, &v40, &v39, &v38, &v37, &v45);
  if (v45)
  {
    v9 = v37;
    v37 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v38;
    v38 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v39;
    v39 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v12 = v40;
    v40 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }

    v13 = v41;
    v41 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }

    v14 = v42;
    v42 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    v15 = v43;
    v43 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v8);
    }

    v16 = v44;
    v44 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v8);
    }

    v17 = *(a1 + 32);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      WTF::String::utf8();
      v20 = v36[0] ? v36[0] + 16 : 0;
      *buf = 136446210;
      v47 = v20;
      _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v18 = v36[0];
      v36[0] = 0;
      if (v18)
      {
        if (*v18 == 1)
        {
          v18 = WTF::fastFree(v18, v19);
        }

        else
        {
          --*v18;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= 4u)
    {
      v21 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v22 = *v21;
        if (v22)
        {
          break;
        }

        v23 = *v21;
        atomic_compare_exchange_strong_explicit(v21, &v23, v22 | 1, memory_order_acquire, memory_order_acquire);
        if (v23 == v22)
        {
          v24 = WTF::Logger::observers(v18);
          v25 = *(v24 + 12);
          if (v25)
          {
            v26 = *v24;
            v27 = *v24 + 8 * v25;
            do
            {
              v28 = *v26;
              *buf = 0;
              WTF::String::String((&v47 + 4), a2);
              v48 = 0;
              WTF::String::String(v49, " then() call made from ");
              v49[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v50, v34);
              v51 = 0;
              WTF::String::String(v52, "[");
              v52[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(v35, &v53);
              v54 = 0;
              WTF::String::String(v55, " callback:");
              v55[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v55[6] = 0;
              WTF::String::String(v56, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v36, buf, 8uLL);
              (*(*v28 + 16))(v28, a1, 4, v36);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v36, v29);
              for (i = 120; i != -8; i -= 16)
              {
                v31 = *&buf[i];
                *&buf[i] = 0;
                if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v31, v19);
                }
              }

              ++v26;
            }

            while (v26 != v27);
          }

          v32 = 1;
          atomic_compare_exchange_strong_explicit(v21, &v32, 0, memory_order_release, memory_order_relaxed);
          if (v32 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v45;
    v45 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::maybeSettle(uint64_t a1, WTF::NativePromiseBase **a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = 0;
  v62[1] = *MEMORY[0x1E69E9840];
  v6 = (a1 + 48);
  v42 = v6;
  v43 = 1;
  atomic_compare_exchange_strong_explicit(v6, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    v6 = MEMORY[0x19EB01E30]();
  }

  *(a1 + 136) = 1;
  result = WTF::NativePromiseBase::logChannel(v6);
  if (*result)
  {
    v8 = result[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = result;
    WTF::Logger::LogSiteIdentifier::toString(&v52, a3);
    WTF::String::String(&v51, " invoking maybeSettle() [");
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, &v50);
    WTF::String::String(&v49, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v47, " isNothing:");
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v11 = v45;
    v45 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v46;
    v46 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = v47;
    v47 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v10);
    }

    v14 = v48;
    v48 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v10);
    }

    v15 = v49;
    v49 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v10);
    }

    v16 = v50;
    v50 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v10);
    }

    v17 = v51;
    v51 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v10);
    }

    v18 = v52;
    v52 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v10);
    }

    v19 = *(v9 + 4);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      WTF::String::utf8();
      v22 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      v55 = v22;
      _os_log_impl(&dword_19D52D000, v19, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v20 = v44[0];
      v44[0] = 0;
      if (v20)
      {
        if (*v20 == 1)
        {
          v20 = WTF::fastFree(v20, v21);
        }

        else
        {
          --*v20;
        }
      }
    }

    if (*v9 && v9[16] >= 4u)
    {
      v23 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v24 = *v23;
        if (v24)
        {
          break;
        }

        v25 = *v23;
        atomic_compare_exchange_strong_explicit(v23, &v25, v24 | 1, memory_order_acquire, memory_order_acquire);
        if (v25 == v24)
        {
          v40 = a2;
          v26 = WTF::Logger::observers(v20);
          v27 = *(v26 + 12);
          if (v27)
          {
            v28 = *v26;
            v29 = *v26 + 8 * v27;
            do
            {
              v30 = *v28;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString((&v55 + 4), a3);
              v56 = 0;
              WTF::String::String(v57, " invoking maybeSettle() [");
              v57[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a1, &v58);
              v59 = 0;
              WTF::String::String(v60, " callback:");
              v60[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v60[6] = 0;
              WTF::String::String(v61, " isNothing:");
              v61[2] = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              v61[6] = 0;
              WTF::String::String(v62, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v30 + 16))(v30, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v31);
              for (i = 120; i != -8; i -= 16)
              {
                v33 = *&buf[i];
                *&buf[i] = 0;
                if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v33, v21);
                }
              }

              ++v28;
            }

            while (v28 != v29);
          }

          v34 = 1;
          atomic_compare_exchange_strong_explicit(v23, &v34, 0, memory_order_release, memory_order_relaxed);
          a2 = v40;
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v53;
    v53 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v21);
    }
  }

  if (*(a1 + 88))
  {
    result = WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallbackBase::dispatch(*a2, a1, &v42);
  }

  else
  {
    v35 = *(a1 + 108);
    if (v35 == *(a1 + 104))
    {
      result = WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1 + 96, v35 + 1, a2);
      v35 = *(a1 + 108);
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *result;
      *result = 0;
    }

    else
    {
      v36 = v35 + 1;
      v37 = *(a1 + 96);
      v38 = *a2;
      *a2 = 0;
    }

    *(v37 + 8 * v35) = v38;
    *(a1 + 108) = v36;
  }

  v39 = v43;
  if (v43 == 1)
  {
    result = v42;
    atomic_compare_exchange_strong_explicit(v42, &v39, 0, memory_order_release, memory_order_relaxed);
    if (v39 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEES9_Lj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_S9_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSI_E_vJSI_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FE788;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEES9_Lj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_S9_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSI_E_vJSI_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE788;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseINSt3__14pairINS_6VectorIhLm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEENS_6StringEEES9_Lj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedISA_S9_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSI_E_vJSI_EE4callESI_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FE7B0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE758;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FE7B0;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE758;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v16[0] = a1;
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v6)
    {
      v9 = "Rejecting";
    }

    else
    {
      v9 = "Resolving";
    }

    WTF::Logger::log<char [10],char [24],WTF::Logger::LogSiteIdentifier,char [2],WTF::NativePromise<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::String>,WTF::String,0u>,char [11],void const*,char [2]>(v7, v9, (a1 + 24), a2);
  }

  v10 = 0;
  v11 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v12 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v12)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = "<chained completion promise>";
    v16[3] = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v12, v16);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v12)
  {
    v14 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v12);
    return WTF::fastFree(v14, v15);
  }

  return result;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore17PhotoCapabilitiesENS_6StringELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS4_S5_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSD_E_vJSD_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FE7E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore17PhotoCapabilitiesENS_6StringELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS4_S5_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSD_E_vJSD_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE7E0;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore17PhotoCapabilitiesENS_6StringELj0EE11whenSettledINS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS4_S5_EEEEEEEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSD_E_vJSD_EE4callESD_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FE808;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE838;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FE808;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE838;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 144);
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a2, &v48);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          v22 = WTF::fastFree(v22, v23);
        }

        else
        {
          --*v22;
        }
      }
    }

    if (*v9 && v9[16] >= 4u)
    {
      v25 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v26 = *v25;
        if (v26)
        {
          break;
        }

        v27 = *v25;
        atomic_compare_exchange_strong_explicit(v25, &v27, v26 | 1, memory_order_acquire, memory_order_acquire);
        if (v27 == v26)
        {
          v28 = WTF::Logger::observers(v22);
          v29 = *(v28 + 12);
          if (v29)
          {
            v30 = *v28;
            v31 = *v28 + 8 * v29;
            do
            {
              v32 = *v30;
              *buf = 0;
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a2, &v61);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
              for (i = 120; i != -8; i -= 16)
              {
                v35 = *&buf[i];
                *&buf[i] = 0;
                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }

              ++v30;
            }

            while (v30 != v31);
          }

          v36 = 1;
          atomic_compare_exchange_strong_explicit(v25, &v36, 0, memory_order_release, memory_order_relaxed);
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

uint64_t mpark::detail::move_constructor<mpark::detail::traits<WebCore::PhotoSettings,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 48))
  {
    if (*(a1 + 48) != 255)
    {
      v3 = *a1;
      *a1 = 0;
      if (v3)
      {
        if (atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v3, a2);
        }
      }
    }
  }

  *(a1 + 48) = -1;
  return a1;
}

void *_ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore13PhotoSettingsENS_6StringELj0EE11whenSettledIZN6WebKit28UserMediaCaptureManagerProxy16getPhotoSettingsENS_23ObjectIdentifierGenericINS3_33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS4_S5_EEEEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSK_E_vJSK_EED1Ev(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FE868;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore13PhotoSettingsENS_6StringELj0EE11whenSettledIZN6WebKit28UserMediaCaptureManagerProxy16getPhotoSettingsENS_23ObjectIdentifierGenericINS3_33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS4_S5_EEEEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSK_E_vJSK_EED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE868;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZNS_13NativePromiseIN7WebCore13PhotoSettingsENS_6StringELj0EE11whenSettledIZN6WebKit28UserMediaCaptureManagerProxy16getPhotoSettingsENS_23ObjectIdentifierGenericINS3_33RealtimeMediaSourceIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEONS_17CompletionHandlerIFvONSt12experimental15fundamentals_v38expectedIS4_S5_EEEEEE3__0EEDaRNS_34GuaranteedSerialFunctionDispatcherEOT_RKNS_6Logger17LogSiteIdentifierEEUlSK_E_vJSK_EE4callESK_(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

uint64_t WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallback<false,void>::~ThenCallback(uint64_t a1)
{
  *a1 = &unk_1F10FE890;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE8C0;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v3 + 8));
  }

  return a1;
}

{
  *a1 = &unk_1F10FE890;
  v2 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  *a1 = &unk_1F10FE8C0;
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v4 + 8));
  }

  return WTF::fastFree(a1, v3);
}

uint64_t WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallback<false,void>::disconnect(uint64_t a1)
{
  *(a1 + 56) = 1;
  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallback<false,void>::processResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 48);
  v7 = WTF::NativePromiseBase::logChannel(a1);
  if (*v7)
  {
    v8 = v7[16] >= 4u;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7;
    if (v6)
    {
      v10 = "Rejecting";
    }

    else
    {
      v10 = "Resolving";
    }

    v43 = v10;
    WTF::String::String(&v52, v10);
    WTF::String::String(&v51, " then() call made from ");
    WTF::Logger::LogSiteIdentifier::toString(&v50, (a1 + 24));
    WTF::String::String(&v49, "[");
    WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a2, &v48);
    WTF::String::String(&v47, " callback:");
    WTF::LogArgument<void const*>::toString();
    WTF::String::String(&v45, "]");
    result = WTF::tryMakeString<WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String,WTF::String>(&v52, &v51, &v50, &v49, &v48, &v47, &v46, &v45, &v53);
    if (!v53)
    {
      __break(0xC471u);
      return result;
    }

    v13 = v45;
    v45 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v12);
    }

    v14 = v46;
    v46 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    v15 = v47;
    v47 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v48;
    v48 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v49;
    v49 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v12);
    }

    v18 = v50;
    v50 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v12);
    }

    v19 = v51;
    v51 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v12);
    }

    v20 = v52;
    v52 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v12);
    }

    v21 = *(v9 + 4);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      WTF::String::utf8();
      v24 = v44[0] ? v44[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v24;
      _os_log_impl(&dword_19D52D000, v21, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v22 = v44[0];
      v44[0] = 0;
      if (v22)
      {
        if (*v22 == 1)
        {
          v22 = WTF::fastFree(v22, v23);
        }

        else
        {
          --*v22;
        }
      }
    }

    if (*v9 && v9[16] >= 4u)
    {
      v25 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v26 = *v25;
        if (v26)
        {
          break;
        }

        v27 = *v25;
        atomic_compare_exchange_strong_explicit(v25, &v27, v26 | 1, memory_order_acquire, memory_order_acquire);
        if (v27 == v26)
        {
          v28 = WTF::Logger::observers(v22);
          v29 = *(v28 + 12);
          if (v29)
          {
            v30 = *v28;
            v31 = *v28 + 8 * v29;
            do
            {
              v32 = *v30;
              *buf = 0;
              WTF::String::String(&buf[8], v43);
              LODWORD(v55) = 0;
              WTF::String::String(&v56, " then() call made from ");
              v57 = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v58, (a1 + 24));
              v59 = 0;
              WTF::String::String(v60, "[");
              v60[2] = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a2, &v61);
              v62 = 0;
              WTF::String::String(v63, " callback:");
              v63[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v63[6] = 0;
              WTF::String::String(v64, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v44, buf, 8uLL);
              (*(*v32 + 16))(v32, v9, 4, v44);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v44, v33);
              for (i = 120; i != -8; i -= 16)
              {
                v35 = *&buf[i];
                *&buf[i] = 0;
                if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v35, v23);
                }
              }

              ++v30;
            }

            while (v30 != v31);
          }

          v36 = 1;
          atomic_compare_exchange_strong_explicit(v25, &v36, 0, memory_order_release, memory_order_relaxed);
          if (v36 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    v37 = v53;
    v53 = 0;
    if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v37, v23);
    }
  }

  v38 = 0;
  v39 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 57), &v38, 1u, memory_order_acquire, memory_order_acquire);
  if (v38)
  {
    MEMORY[0x19EB01E30](a1 + 57);
  }

  v40 = *(a1 + 64);
  *(a1 + 64) = 0;
  std::unique_ptr<WTF::NativePromiseProducer<void,void,0u>>::reset[abi:sn200100]((a1 + 64), 0);
  atomic_compare_exchange_strong_explicit((a1 + 57), &v39, 0, memory_order_release, memory_order_relaxed);
  if (v39 != 1)
  {
    WTF::Lock::unlockSlow((a1 + 57));
  }

  (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
  if (v40)
  {
    *buf = 0uLL;
    v55 = "<chained completion promise>";
    v56 = 0;
    WTF::NativePromiseProducer<void,void,0u>::resolve<std::enable_if<true,void>>(v40, buf);
  }

  result = *(a1 + 72);
  *(a1 + 72) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v40)
  {
    v41 = WTF::NativePromiseProducer<void,void,0u>::~NativePromiseProducer(v40);
    return WTF::fastFree(v41, v42);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_0,std::unique_ptr<WebCore::CARingBuffer,WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_0::default_delete<std::unique_ptr>>,WebCore::CAAudioStreamDescription const&,unsigned long>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FE8F0;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 4);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_0,std::unique_ptr<WebCore::CARingBuffer,WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_0::default_delete<std::unique_ptr>>,WebCore::CAAudioStreamDescription const&,unsigned long>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE8F0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 4);
    (*(*v3 + 16))(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_0,std::unique_ptr<WebCore::CARingBuffer,WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_0::default_delete<std::unique_ptr>>,WebCore::CAAudioStreamDescription const&,unsigned long>::call@<X0>(WebKit::ProducerSharedCARingBuffer *this@<X1>, WebCore::CAAudioStreamDescription *a2@<X2>, uint64_t a3@<X0>, WebCore::CARingBuffer **a4@<X8>)
{
  v6 = *(a3 + 8);
  WebKit::ProducerSharedCARingBuffer::allocate(this, a2, v20);
  if (v22)
  {
    v7 = v20[0];
    v20[0] = 0;
    v18 = v7;
    WTF::MachSendRight::MachSendRight();
    *&v19[8] = v21;
    v8 = *(v6 + 32);
    v10 = IPC::Encoder::operator new(0x238, v9);
    *v10 = 953;
    *(v10 + 68) = 0;
    *(v10 + 70) = 0;
    *(v10 + 69) = 0;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0;
    *(v10 + 1) = 0;
    IPC::Encoder::encodeHeader(v10);
    v23 = v10;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v10, *(v6 + 24));
    IPC::ArgumentCoder<WebKit::ConsumerSharedCARingBufferHandle,void>::encode(v10, v19);
    v11 = WebCore::CAAudioStreamDescription::streamDescription(this);
    IPC::ArgumentCoder<AudioStreamBasicDescription,void>::encode(v10, v11);
    IPC::Connection::sendMessageImpl(v8, &v23, 0, 0);
    v13 = v23;
    v23 = 0;
    if (v13)
    {
      IPC::Encoder::~Encoder(v13, v12);
      bmalloc::api::tzoneFree(v16, v17);
    }

    v14 = v18;
    v18 = 0;
    *a4 = v14;
    WTF::MachSendRight::~MachSendRight(v19);
    std::unique_ptr<WebKit::ConsumerSharedCARingBuffer>::reset[abi:sn200100](&v18, 0);
    return std::__optional_destruct_base<WebKit::ProducerSharedCARingBuffer::Pair,false>::~__optional_destruct_base[abi:sn200100](v20);
  }

  else
  {
    result = 61;
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_1,void,unsigned long long,unsigned long long,BOOL>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FE918;
  a1[1] = 0;
  if (v2 && atomic_fetch_add(v2 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 4);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_1,void,unsigned long long,unsigned long long,BOOL>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE918;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3 + 4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 4);
    (*(*v3 + 16))(v3);
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::RemoteAudioSourceProviderProxy::create(WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<IPC::Connection,WTF::RawPtrTraits<IPC::Connection>,WTF::DefaultRefDerefTraits<IPC::Connection>> &&,WebCore::AudioSourceProviderAVFObjC &)::$_1,void,unsigned long long,unsigned long long,BOOL>::call(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 32);
  v13[0] = a4;
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 952;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  IPC::Encoder::encodeHeader(v8);
  v14 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(v6 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, a3);
  IPC::Encoder::operator<<<BOOL &>(v8, v13);
  IPC::Connection::sendMessageImpl(v7, &v14, 0, 0);
  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v9);
    return bmalloc::api::tzoneFree(v11, v12);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v23 + 8), v8);
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref((v12 + 8), v8);
          goto LABEL_19;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteImageDecoderAVFProxy::createDecoder(IPC::SharedBufferReference const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0,void,WebCore::EncodedDataStatus>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FE940;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteImageDecoderAVFProxy::createDecoder(IPC::SharedBufferReference const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0,void,WebCore::EncodedDataStatus>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FE940;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::RemoteImageDecoderAVFProxy::createDecoder(IPC::SharedBufferReference const&,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>> &&)> &&)::$_0,void,WebCore::EncodedDataStatus>::call(atomic_ullong *result)
{
  v1 = result[1];
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      WebKit::RemoteImageDecoderAVFProxy::ref(*(v1 + 8));
      v4 = v3[2];
      v25 = v4;
      v5 = v2[3];
      if (v5)
      {
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, v2[2], &v24);
        if (v24)
        {
          v6 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v2 + 4, v4);
          if (v6)
          {
            v7 = v6;
            v8 = (v6 + 8);
            while (1)
            {
              v9 = *v8;
              if ((*v8 & 1) == 0)
              {
                break;
              }

              v10 = *v8;
              atomic_compare_exchange_strong_explicit(v8, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v10 == v9)
              {
                goto LABEL_15;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v8);
LABEL_15:
            v11 = *(v24 + 56);
            v12 = WebCore::ImageDecoderAVFObjC::frameCount(v7);
            v13 = WebCore::ImageDecoderAVFObjC::size(v7);
            v14 = *(v7 + 5) != 0;
            v22[0] = v13;
            v22[1] = &v25;
            v22[2] = v12;
            v22[3] = v22;
            v23[0] = v14;
            v16 = IPC::Encoder::operator new(0x238, v15);
            *v16 = 1378;
            *(v16 + 68) = 0;
            *(v16 + 70) = 0;
            *(v16 + 69) = 0;
            *(v16 + 2) = 0;
            *(v16 + 3) = 0;
            *(v16 + 1) = 0;
            IPC::Encoder::encodeHeader(v16);
            v26 = v16;
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v25);
            IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v16, v12);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v16, v22[0]);
            IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(v16, SHIDWORD(v22[0]));
            IPC::Encoder::operator<<<BOOL &>(v16, v23);
            IPC::Connection::sendMessageImpl(v11, &v26, 0, 0);
            v18 = v26;
            v26 = 0;
            if (v18)
            {
              IPC::Encoder::~Encoder(v18, v17);
              bmalloc::api::tzoneFree(v20, v21);
            }

            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageDecoder,(WTF::DestructionThread)0>::deref(v8, v17);
          }

          v19 = v24;
          v24 = 0;
          if (v19)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v19 + 16));
          }
        }
      }

      return WebKit::RemoteImageDecoderAVFProxy::deref(v2);
    }
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebCore::ImageDecoderAVFObjC,WTF::RawPtrTraits<WebCore::ImageDecoderAVFObjC>,WTF::DefaultRefDerefTraits<WebCore::ImageDecoderAVFObjC>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::ImageDecoderIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBFB5F8);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::RemoteSampleBufferDisplayLayerManager(WebKit::GPUConnectionToWebProcess &,WebKit::SharedPreferencesForWebProcess &)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FE968;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::RemoteSampleBufferDisplayLayerManager(WebKit::GPUConnectionToWebProcess &,WebKit::SharedPreferencesForWebProcess &)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FE968;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

__n128 WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::RemoteSampleBufferDisplayLayerManager(WebKit::GPUConnectionToWebProcess &,WebKit::SharedPreferencesForWebProcess &)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *(a1 + 24);
  *(v1 + 55) = *(a1 + 39);
  *(v1 + 40) = result;
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::close(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FE990;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::close(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FE990;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::close(void)::$_0,void>::call(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 8);
  atomic_compare_exchange_strong_explicit((v2 + 72), &v1, 1u, memory_order_acquire, memory_order_acquire);
  if (v1)
  {
    MEMORY[0x19EB01E30](v2 + 72);
  }

  v3 = *(v2 + 80);
  *(v2 + 80) = 0;
  v4 = WTF::fastMalloc(0x10);
  *v4 = &unk_1F10FE9B8;
  v4[1] = v3;
  v7 = v4;
  WTF::callOnMainRunLoop();
  result = v7;
  if (v7)
  {
    result = (*(*v7 + 8))(v7);
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit((v2 + 72), &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    return WTF::Lock::unlockSlow((v2 + 72));
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::close(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FE9B8;
  v3 = a1[1];
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::close(void)::$_0::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FE9B8;
  v3 = *(this + 1);
  if (v3)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBFB9E4);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::createLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebCore::IntSize,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FE9E0;
  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::createLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebCore::IntSize,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FE9E0;
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::createLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,BOOL,WebCore::IntSize,BOOL,BOOL,WTF::CompletionHandler<void ()(WebCore::HostingContext)> &&)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v2[3];
  if (!v3)
  {
    v27 = 0;
LABEL_3:
    LODWORD(v24) = 0;
    v25 = 0;
    v26 = 0;
    WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()((a1 + 48), &v24);
    v5 = v26;
    v26 = 0;
    if (v5)
    {
      WTF::fastFree(v5, v4);
    }

    WTF::MachSendRight::~MachSendRight(&v25);
    goto LABEL_6;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v3, v2[2], &v27);
  v7 = v27;
  if (!v27)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 24);
  v9 = v2[4];
  while (1)
  {
    v10 = *v9;
    if ((*v9 & 1) == 0)
    {
      break;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v11 == v10)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_15:
  v24 = v9;
  WebKit::RemoteSampleBufferDisplayLayer::create(v7, v8, &v24, *(a1 + 16), &v23);
  if (v24)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v24);
  }

  v12 = v23;
  if (!v23)
  {
    goto LABEL_3;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 36);
  v15 = *(a1 + 44);
  v16 = *(a1 + 45);
  while (1)
  {
    v17 = v2[1];
    if ((v17 & 1) == 0)
    {
      break;
    }

    v18 = v2[1];
    atomic_compare_exchange_strong_explicit(v2 + 1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v18 == v17)
    {
      goto LABEL_23;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(v2[1]);
LABEL_23:
  v19 = *(a1 + 48);
  *(a1 + 48) = 0;
  v20 = *(a1 + 24);
  atomic_fetch_add((v12 + 16), 1u);
  v21 = WTF::fastMalloc(0x30);
  *v21 = &unk_1F10FEA08;
  v21[1] = v2;
  v21[2] = v2;
  v21[3] = v19;
  v21[4] = v20;
  v21[5] = v12;
  v24 = v21;
  WebKit::RemoteSampleBufferDisplayLayer::initialize(v12, v13, v14, v15, v16, &v24);
  v22 = v24;
  v24 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  if (v23)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v23 + 16));
  }

LABEL_6:
  v6 = v27;
  v27 = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v6 + 2);
  }
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit37RemoteSampleBufferDisplayLayerManager11createLayerENS_23ObjectIdentifierGenericINS2_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNS9_14HostingContextEEEEEN3__0clEvEUlT_E_vJSC_EED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FEA08;
  v3 = a1[5];
  a1[5] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  v4 = a1[3];
  a1[3] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  a1[2] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit37RemoteSampleBufferDisplayLayerManager11createLayerENS_23ObjectIdentifierGenericINS2_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNS9_14HostingContextEEEEEN3__0clEvEUlT_E_vJSC_EED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10FEA08;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v5 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void _ZN3WTF6Detail15CallableWrapperIZZN6WebKit37RemoteSampleBufferDisplayLayerManager11createLayerENS_23ObjectIdentifierGenericINS2_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNS9_14HostingContextEEEEEN3__0clEvEUlT_E_vJSC_EE4callESC_(uint64_t a1, int *a2)
{
  v23 = *a2;
  WTF::MachSendRight::MachSendRight();
  v4 = *(a2 + 2);
  *(a2 + 2) = 0;
  v25 = v4;
  v5 = *(a1 + 8);
  v6 = *(v5 + 64);
  while (1)
  {
    v7 = *(v5 + 8);
    if ((v7 & 1) == 0)
    {
      break;
    }

    v8 = *(v5 + 8);
    atomic_compare_exchange_strong_explicit((v5 + 8), &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v8 == v7)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v5 + 8));
LABEL_6:
  *v26 = v5;
  v9 = *(a1 + 24);
  *(a1 + 24) = 0;
  *&v26[8] = v9;
  v10 = *(a1 + 40);
  *(a1 + 40) = 0;
  v27 = v10;
  v28 = v23;
  WTF::MachSendRight::MachSendRight();
  v11 = v25;
  v25 = 0;
  v30 = v11;
  v12 = WTF::fastMalloc(0x40);
  *v12 = &unk_1F10FEA30;
  *(v12 + 8) = *v26;
  *v26 = 0uLL;
  *(v12 + 24) = *&v26[16];
  v13 = v27;
  v27 = 0;
  *(v12 + 32) = v13;
  *(v12 + 40) = v28;
  WTF::MachSendRight::MachSendRight();
  v14 = v30;
  v30 = 0;
  *(v12 + 56) = v14;
  v31 = v12;
  (*(*v6 + 48))(v6, &v31);
  v16 = v31;
  v31 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = v30;
  v30 = 0;
  if (v17)
  {
    WTF::fastFree(v17, v15);
  }

  WTF::MachSendRight::~MachSendRight(&v29);
  v19 = v27;
  v27 = 0;
  if (v19)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v19 + 16));
  }

  v20 = *&v26[8];
  *&v26[8] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *v26;
  *v26 = 0;
  if (v21)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v21 + 8), v18);
  }

  v22 = v25;
  v25 = 0;
  if (v22)
  {
    WTF::fastFree(v22, v18);
  }

  WTF::MachSendRight::~MachSendRight(&v24);
}

void *_ZN3WTF6Detail15CallableWrapperIZZZN6WebKit37RemoteSampleBufferDisplayLayerManager11createLayerENS_23ObjectIdentifierGenericINS2_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNS9_14HostingContextEEEEEN3__0clEvENUlT_E_clISC_EEDaSH_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FEA30;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    WTF::fastFree(v3, a2);
  }

  WTF::MachSendRight::~MachSendRight((a1 + 6));
  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v7 + 8), v4);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit37RemoteSampleBufferDisplayLayerManager11createLayerENS_23ObjectIdentifierGenericINS2_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNS9_14HostingContextEEEEEN3__0clEvENUlT_E_clISC_EEDaSH_EUlvE_vJEED0Ev(void *a1, void *a2)
{
  *a1 = &unk_1F10FEA30;
  v3 = a1[7];
  a1[7] = 0;
  if (v3)
  {
    WTF::fastFree(v3, a2);
  }

  WTF::MachSendRight::~MachSendRight((a1 + 6));
  v5 = a1[4];
  a1[4] = 0;
  if (v5)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v5 + 16));
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v7 + 8), v4);
  }

  return WTF::fastFree(a1, v4);
}

void _ZN3WTF6Detail15CallableWrapperIZZZN6WebKit37RemoteSampleBufferDisplayLayerManager11createLayerENS_23ObjectIdentifierGenericINS2_38SampleBufferDisplayLayerIdentifierTypeENS_38ObjectIdentifierMainThreadAccessTraitsIyEEyEEbN7WebCore7IntSizeEbbONS_17CompletionHandlerIFvNS9_14HostingContextEEEEEN3__0clEvENUlT_E_clISC_EEDaSH_EUlvE_vJEE4callEv(uint64_t a1)
{
  v2 = 0;
  v3 = (*(a1 + 8) + 72);
  atomic_compare_exchange_strong_explicit(v3, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](v3);
  }

  v4 = *(a1 + 24);
  if (v4 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBFC3F0);
  }

  v5 = *(a1 + 8);
  v6 = *(v5 + 80);
  if (!v6)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v5 + 80));
    v6 = *(v5 + 80);
    v4 = *(a1 + 24);
  }

  v7 = *(v6 - 8);
  v8 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 16 * v11);
  v13 = *v12;
  if (!*v12)
  {
LABEL_15:
    *v12 = v4;
    v16 = *(a1 + 32);
    *(a1 + 32) = 0;
    v17 = v12[1];
    v12[1] = v16;
    if (v17)
    {
      WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v17 + 16));
    }

    v18 = *(v5 + 80);
    if (v18)
    {
      v19 = *(v18 - 12) + 1;
    }

    else
    {
      v19 = 1;
    }

    *(v18 - 12) = v19;
    v20 = (*(v18 - 16) + v19);
    v21 = *(v18 - 4);
    if (v21 > 0x400)
    {
      if (v21 > 2 * v20)
      {
        goto LABEL_23;
      }
    }

    else if (3 * v21 > 4 * v20)
    {
      goto LABEL_23;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v5 + 80));
    goto LABEL_23;
  }

  v14 = 0;
  v15 = 1;
  while (v13 != v4)
  {
    if (v13 == -1)
    {
      v14 = v12;
    }

    v11 = (v11 + v15) & v7;
    v12 = (v6 + 16 * v11);
    v13 = *v12;
    ++v15;
    if (!*v12)
    {
      if (v14)
      {
        *v14 = 0;
        v14[1] = 0;
        --*(*(v5 + 80) - 16);
        v4 = *(a1 + 24);
        v12 = v14;
      }

      goto LABEL_15;
    }
  }

LABEL_23:
  v26 = *(a1 + 40);
  WTF::MachSendRight::MachSendRight();
  v22 = *(a1 + 56);
  *(a1 + 56) = 0;
  v28 = v22;
  WTF::CompletionHandler<void ()(WebCore::HostingContext)>::operator()((a1 + 16), &v26);
  v24 = v28;
  v28 = 0;
  if (v24)
  {
    WTF::fastFree(v24, v23);
  }

  WTF::MachSendRight::~MachSendRight(&v27);
  v25 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v25, 0, memory_order_release, memory_order_relaxed);
  if (v25 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v23 + 16));
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v12 + 16));
          goto LABEL_19;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FEA58;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEA58;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0,void>::call(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 64);
  while (1)
  {
    v4 = *(v2 + 8);
    if ((v4 & 1) == 0)
    {
      break;
    }

    v5 = *(v2 + 8);
    atomic_compare_exchange_strong_explicit((v2 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v2 + 8));
LABEL_6:
  v6 = *(a1 + 24);
  v7 = WTF::fastMalloc(0x18);
  *v7 = &unk_1F10FEA80;
  v7[1] = v2;
  v7[2] = v6;
  v9 = v7;
  (*(*v3 + 48))(v3, &v9);
  result = v9;
  v9 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FEA80;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FEA80;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v2 = 0;
  v3 = (*(a1 + 8) + 72);
  atomic_compare_exchange_strong_explicit(v3, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](v3);
  }

  v4 = *(a1 + 8);
  v7 = *(v4 + 80);
  v5 = (v4 + 80);
  v6 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = *(a1 + 16);
  if (v8 == -1 || !v8)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBFCA70);
  }

  v9 = *(v6 - 8);
  v10 = (v8 + ~(v8 << 32)) ^ ((v8 + ~(v8 << 32)) >> 22);
  v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
  v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
  v13 = v9 & ((v12 >> 31) ^ v12);
  v14 = *(v6 + 16 * v13);
  if (v14 != v8)
  {
    v15 = 1;
    while (v14)
    {
      v13 = (v13 + v15) & v9;
      v14 = *(v6 + 16 * v13);
      ++v15;
      if (v14 == v8)
      {
        goto LABEL_12;
      }
    }

    v13 = *(v6 - 4);
  }

LABEL_12:
  if (v13 != *(v6 - 4))
  {
    v20 = (v6 + 16 * v13);
    v16 = v20[1];
    if (v16 && (v20[1] = 0, (v6 = *v5) == 0) || (v6 += 16 * *(v6 - 4), v6 != v20))
    {
      if (v6 != v20)
      {
        *v20 = -1;
        v20[1] = 0;
        v21 = *(*v5 - 4);
        v22 = vadd_s32(*(*v5 - 16), 0xFFFFFFFF00000001);
        *(*v5 - 16) = v22;
        if (v21 >= 9 && 6 * v22.i32[1] < v21)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteSampleBufferDisplayLayer,WTF::RawPtrTraits<WebKit::RemoteSampleBufferDisplayLayer>,WTF::DefaultRefDerefTraits<WebKit::RemoteSampleBufferDisplayLayer>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v5, v21 >> 1);
        }
      }
    }
  }

  else
  {
LABEL_13:
    v16 = 0;
  }

  v17 = WTF::fastMalloc(0x10);
  *v17 = &unk_1F10FEAA8;
  v17[1] = v16;
  v24 = v17;
  WTF::callOnMainRunLoop();
  result = v24;
  if (v24)
  {
    result = (*(*v24 + 8))(v24);
  }

  v19 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v19, 0, memory_order_release, memory_order_relaxed);
  if (v19 != 1)
  {
    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FEAA8;
  a1[1] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v2 + 16));
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::releaseLayer(WTF::ObjectIdentifierGeneric<WebKit::SampleBufferDisplayLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_0::operator()(void)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FEAA8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WebKit::RemoteSampleBufferDisplayLayer,(WTF::DestructionThread)2>::deref((v3 + 16));
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::updateSharedPreferencesForWebProcess(WebKit::SharedPreferencesForWebProcess)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FEAD0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::updateSharedPreferencesForWebProcess(WebKit::SharedPreferencesForWebProcess)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEAD0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

__n128 WTF::Detail::CallableWrapper<WebKit::RemoteSampleBufferDisplayLayerManager::updateSharedPreferencesForWebProcess(WebKit::SharedPreferencesForWebProcess)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = *(a1 + 24);
  *(v1 + 55) = *(a1 + 39);
  *(v1 + 40) = result;
  return result;
}

atomic_uchar **WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref(atomic_uchar **result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 1))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v3);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v23 + 32), v8);
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v12 + 32), v8);
          goto LABEL_19;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit,WTF::RawPtrTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>,WTF::DefaultRefDerefTraits<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t a2)
{
  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBFD04CLL);
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 8);
    v4 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v5 = 9 * ((v4 + ~(v4 << 13)) ^ ((v4 + ~(v4 << 13)) >> 8));
    v6 = (v5 ^ (v5 >> 15)) + ~((v5 ^ (v5 >> 15)) << 27);
    v7 = v3 & ((v6 >> 31) ^ v6);
    v8 = *(v2 + 16 * v7);
    if (v8 == a2)
    {
      return *(v2 + 16 * v7 + 8);
    }

    v9 = 1;
    while (v8)
    {
      v7 = (v7 + v9) & v3;
      v8 = *(v2 + 16 * v7);
      ++v9;
      if (v8 == a2)
      {
        return *(v2 + 16 * v7 + 8);
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit(WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebKit::GPUConnectionToWebProcess &,WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>,unsigned long long)> &&)::$_0,void,std::optional<WebCore::CAAudioStreamDescription>>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FEAF8;
  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit(WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebKit::GPUConnectionToWebProcess &,WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>,unsigned long long)> &&)::$_0,void,std::optional<WebCore::CAAudioStreamDescription>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEAF8;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit(WTF::ObjectIdentifierGeneric<WebKit::AudioMediaStreamTrackRendererInternalUnitIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WebKit::GPUConnectionToWebProcess &,WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>,unsigned long long)> &&)::$_0,void,std::optional<WebCore::CAAudioStreamDescription>>::call(void *a1, WebCore::CAAudioStreamDescription *this)
{
  v4 = a1[1];
  if (v4 && *(v4 + 8) && (*(this + 80) & 1) != 0)
  {
    v5 = a1[2];
    WebCore::CAAudioStreamDescription::sampleRate(this);
    if (*(this + 80) & 1) != 0 && ((v7 = (v6 * 10.0 / 1000.0), *(v5 + 200) != 1) ? (*(v5 + 120) = MEMORY[0x1E69E2E98] + 16, *(v5 + 128) = *(this + 8), v12 = *(this + 24), v13 = *(this + 40), v14 = *(this + 56), *(v5 + 192) = *(this + 18), *(v5 + 160) = v13, *(v5 + 176) = v14, *(v5 + 144) = v12, *(v5 + 200) = 1) : (v8 = *(this + 8), v9 = *(this + 24), *(v5 + 160) = *(this + 5), *(v5 + 128) = v8, *(v5 + 144) = v9, v10 = *(this + 3), *(v5 + 184) = *(this + 8), *(v5 + 168) = v10, *(v5 + 192) = *(this + 18)), v7 <= 0x80 ? (v15 = 128) : (v15 = v7), *(v5 + 88) = v15, (*(this + 80)))
    {
      v16 = MEMORY[0x1E69E2E98] + 16;
      v18 = *(this + 24);
      v19 = *(this + 40);
      v20 = *(this + 56);
      v21 = *(this + 18);
      v17 = *(this + 8);
      v22 = 1;
      WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>,unsigned long long)>::operator()(a1 + 3, &v16);
      if (v22 == 1)
      {
        WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v16);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if ((*(this + 80) & 1) == 0)
    {
      v11 = qword_1ED641580;
      if (os_log_type_enabled(qword_1ED641580, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit unable to get format description", &v16, 2u);
      }
    }

    LOBYTE(v16) = 0;
    v22 = 0;
    WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>,unsigned long long)>::operator()(a1 + 3, &v16);
  }
}

uint64_t WTF::CompletionHandler<void ()(std::optional<WebCore::CAAudioStreamDescription>,unsigned long long)>::operator()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = 0;
  LOBYTE(v5) = 0;
  v11 = 0;
  if (*(a2 + 80))
  {
    v5 = MEMORY[0x1E69E2E98] + 16;
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    v9 = *(a2 + 56);
    v10 = *(a2 + 72);
    v6 = *(a2 + 8);
    v11 = 1;
    v12 = MEMORY[0x1E69E2E98] + 16;
    v3 = *(a2 + 24);
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    v13 = *(a2 + 8);
    v14 = v3;
    v18 = 1;
  }

  else
  {
    LOBYTE(v12) = 0;
    v18 = 0;
  }

  (*(*v2 + 16))(v2, &v12);
  if (v18 == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v12);
  }

  if (v11 == 1)
  {
    WebCore::CAAudioStreamDescription::~CAAudioStreamDescription(&v5);
  }

  return (*(*v2 + 8))(v2);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::canRenderAudioChanged(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FEB20;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v3 + 32), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::canRenderAudioChanged(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FEB20;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::AudioMediaStreamTrackRendererInternalUnit::Client,(WTF::DestructionThread)0>::deref((v3 + 32), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::canRenderAudioChanged(void)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 112) == 1)
  {
    ShouldRegisterAsSpeakerSamplesProducer = WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::computeShouldRegisterAsSpeakerSamplesProducer(*(result + 8));

    return WebKit::RemoteAudioMediaStreamTrackRendererInternalUnitManagerUnit::setShouldRegisterAsSpeakerSamplesProducer(v1, ShouldRegisterAsSpeakerSamplesProducer);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::UserMediaCaptureManagerProxy::PageSources,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = *(v2 - 12);
    if (v3)
    {
      v5 = v3 << (6 * v4 >= (2 * v3));
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = 8;
LABEL_6:
  v6 = WTF::fastMalloc((48 * v5 + 16));
  v8 = v6;
  v9 = v6 + 16;
  if (v5)
  {
    bzero((v6 + 16), 48 * v5);
  }

  *a1 = v9;
  v8[2] = v5 - 1;
  v8[3] = v5;
  *v8 = 0;
  v8[1] = v4;
  if (v3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v2 + 48 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
        {
          v16 = *a1;
          v40 = v11;
          if (*a1)
          {
            v17 = *(v16 - 8);
          }

          else
          {
            v17 = 0;
          }

          v18 = (v13 + ~(v13 << 32)) ^ ((v13 + ~(v13 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v11 = v16 + 48 * v21;
            v21 = (v21 + v22++) & v17;
          }

          while (*v11);
          v24 = (v11 + 24);
          v23 = *(v11 + 24);
          if (v23)
          {
            WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v23, v7);
          }

          v25 = *(v11 + 16);
          *(v11 + 16) = 0;
          if (v25)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v25, v7);
          }

          v26 = 0;
          *v11 = *v12;
          v27 = *(v12 + 1);
          *(v12 + 1) = 0;
          *(v11 + 8) = v27;
          *(v11 + 16) = *(v12 + 2);
          *(v12 + 2) = 0;
          *v24 = 0;
          *(v11 + 32) = 0;
          *(v11 + 40) = 0;
          atomic_compare_exchange_strong_explicit((v11 + 40), &v26, 1u, memory_order_acquire, memory_order_acquire);
          if (v26)
          {
            MEMORY[0x19EB01E30](v11 + 40);
          }

          v28 = 0;
          atomic_compare_exchange_strong_explicit(v12 + 40, &v28, 1u, memory_order_acquire, memory_order_acquire);
          if (v28)
          {
            MEMORY[0x19EB01E30](v12 + 40);
          }

          v29 = *(v12 + 3);
          *(v12 + 3) = 0;
          v30 = *v24;
          *v24 = v29;
          if (v30)
          {
            WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v30, v7);
          }

          v31 = *(v12 + 8);
          *(v12 + 8) = 0;
          *(v11 + 32) = v31;
          v32 = *(v12 + 9);
          *(v12 + 9) = 0;
          *(v11 + 36) = v32;
          v33 = 1;
          atomic_compare_exchange_strong_explicit(v12 + 40, &v33, 0, memory_order_release, memory_order_relaxed);
          if (v33 != 1)
          {
            WTF::Lock::unlockSlow((v12 + 40));
          }

          v34 = 1;
          atomic_compare_exchange_strong_explicit((v11 + 40), &v34, 0, memory_order_release, memory_order_relaxed);
          if (v34 != 1)
          {
            WTF::Lock::unlockSlow((v11 + 40));
          }

          v35 = *(v12 + 3);
          if (v35)
          {
            WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v35, v7);
          }

          v36 = *(v12 + 2);
          *(v12 + 2) = 0;
          if (v36)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v36, v7);
          }

          if (v12 != a2)
          {
            v11 = v40;
          }
        }

        else
        {
          v14 = *(v12 + 3);
          if (v14)
          {
            WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(v14, v7);
          }

          v15 = *(v12 + 2);
          *(v12 + 2) = 0;
          if (v15)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v15, v7);
          }
        }
      }

      ++v10;
    }

    while (v10 != v3);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v2)
    {
      return result;
    }
  }

  WTF::fastFree((v2 - 16), v7);
  return v11;
}

atomic_uchar **WTF::GenericHashTraits<WebKit::UserMediaCaptureManagerProxy::PageSources>::assignToEmpty<WebKit::UserMediaCaptureManagerProxy::PageSources,WebKit::UserMediaCaptureManagerProxy::PageSources>(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  a2[1] = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v5, a2);
  }

  v6 = 0;
  v7 = *a2;
  *a2 = 0;
  *a1 = v7;
  atomic_compare_exchange_strong_explicit((a1 + 32), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](a1 + 32);
  }

  v8 = 0;
  v9 = (a2 + 4);
  atomic_compare_exchange_strong_explicit(a2 + 32, &v8, 1u, memory_order_acquire, memory_order_acquire);
  if (v8)
  {
    MEMORY[0x19EB01E30](a2 + 4);
  }

  v10 = a2[2];
  a2[2] = 0;
  result = *(a1 + 16);
  *(a1 + 16) = v10;
  if (result)
  {
    result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::deallocateTable(result, a2);
  }

  v12 = *(a2 + 6);
  *(a2 + 6) = 0;
  *(a1 + 24) = v12;
  v13 = *(a2 + 7);
  *(a2 + 7) = 0;
  *(a1 + 28) = v13;
  v14 = (a2 + 4);
  v15 = 1;
  v16 = 1;
  atomic_compare_exchange_strong_explicit(v14, &v16, 0, memory_order_release, memory_order_relaxed);
  if (v16 != 1)
  {
    result = WTF::Lock::unlockSlow(v9);
  }

  atomic_compare_exchange_strong_explicit((a1 + 32), &v15, 0, memory_order_release, memory_order_relaxed);
  if (v15 != 1)
  {

    return WTF::Lock::unlockSlow((a1 + 32));
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakHashSet<WebCore::RealtimeMediaSource>::values(uint64_t result, atomic_uchar *a2)
{
  v3 = result;
  v4 = 0;
  *result = 0;
  *(result + 8) = 0;
  v5 = (a2 + 16);
  atomic_compare_exchange_strong_explicit(a2 + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 16);
  }

  v36 = 0;
  v37 = 0;
  if (!*a2 || (v6 = *(*a2 - 12), !v6))
  {
    v13 = 0;
    goto LABEL_41;
  }

  if (v6 >> 29)
  {
    __break(0xC471u);
    return result;
  }

  v7 = WTF::fastMalloc((8 * v6));
  LODWORD(v37) = v6;
  v36 = v7;
  v8 = *a2;
  if (!*a2 || !*(v8 - 12))
  {
    v13 = 0;
    goto LABEL_18;
  }

  v9 = *(v8 - 4);
  if (v9)
  {
    v10 = 16 * v9;
    v11 = *a2;
    while (*v11 == -1 || *v11 == 0)
    {
      v11 += 16;
      v10 -= 16;
      if (!v10)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v11 = *a2;
  }

  v14 = v8 + 16 * v9;
  if (v14 == v11)
  {
LABEL_37:
    v13 = 0;
    LODWORD(v15) = 0;
  }

  else
  {
    v13 = 0;
    LODWORD(v15) = 0;
    do
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v39, *v11, *(v11 + 8));
      if (v39)
      {
        v38 = v39;
        if (v15 == v37)
        {
          v16 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v36, v15 + 1, &v38);
          v15 = HIDWORD(v37);
          v7 = v36;
          v17 = *v16;
          *v16 = 0;
          *(v7 + v15) = v17;
        }

        else
        {
          v38 = 0;
          *(v7 + v15) = v39;
        }

        LODWORD(v15) = v15 + 1;
        HIDWORD(v37) = v15;
        v18 = v38;
        v38 = 0;
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }
      }

      else
      {
        v13 = 1;
      }

      do
      {
        v11 += 16;
        if (v11 == v14)
        {
          break;
        }
      }

      while (*v11 == -1 || *v11 == 0);
    }

    while (v11 != v14);
    LODWORD(v6) = v37;
  }

  if (v6 > v15)
  {
    if (v15)
    {
      LODWORD(v37) = v15;
      v36 = WTF::fastRealloc(v7, (8 * v15));
      goto LABEL_41;
    }

    if (v7)
    {
LABEL_18:
      v36 = 0;
      LODWORD(v37) = 0;
      WTF::fastFree(v7, a2);
    }
  }

LABEL_41:
  v20 = *(v3 + 12);
  v21 = *v3;
  if (v20)
  {
    v22 = 8 * v20;
    v23 = *v3;
    do
    {
      v24 = *v23;
      *v23 = 0;
      if (v24)
      {
        (*(*v24 + 8))(v24);
      }

      v23 = (v23 + 8);
      v22 -= 8;
    }

    while (v22);
  }

  if (v21)
  {
    WTF::fastFree(v21, a2);
  }

  *v3 = v36;
  v25 = v37;
  v36 = 0;
  v37 = 0;
  *(v3 + 8) = v25;
  result = WTF::Vector<WTF::Ref<WebCore::RealtimeMediaSource,WTF::RawPtrTraits<WebCore::RealtimeMediaSource>,WTF::DefaultRefDerefTraits<WebCore::RealtimeMediaSource>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v36, a2);
  v26 = *a2;
  if ((v13 & 1) == 0)
  {
    goto LABEL_69;
  }

  if (!v26)
  {
    goto LABEL_67;
  }

  v27 = *(v26 - 4);
  if (v27)
  {
    v28 = 0;
    v29 = (v26 + 16 * v27 - 16);
    do
    {
      result = *v29;
      if (*v29 != -1 && *v29 != 0)
      {
        result = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(result);
        if (result)
        {
          result = *v29;
          *v29 = 0;
          if (result)
          {
            result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v30);
          }

          *v29 = -1;
          ++v28;
        }
      }

      v29 -= 2;
      --v27;
    }

    while (v27);
    v26 = *a2;
    if (v28)
    {
      v31 = *(v26 - 12) - v28;
      *(v26 - 16) += v28;
      *(v26 - 12) = v31;
      goto LABEL_62;
    }

    if (v26)
    {
      goto LABEL_62;
    }

LABEL_67:
    LODWORD(v26) = 0;
    *(a2 + 2) = 0;
LABEL_71:
    v34 = 2 * v26;
    goto LABEL_73;
  }

LABEL_62:
  v32 = *(v26 - 4);
  if (6 * *(v26 - 12) >= v32 || v32 <= 8)
  {
    *(a2 + 2) = 0;
    goto LABEL_70;
  }

  result = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(a2);
  v26 = *a2;
LABEL_69:
  *(a2 + 2) = 0;
  if (!v26)
  {
    goto LABEL_71;
  }

LABEL_70:
  LODWORD(v26) = *(v26 - 12);
  if (v26 <= 0x7FFFFFFE)
  {
    goto LABEL_71;
  }

  v34 = -2;
LABEL_73:
  *(a2 + 3) = v34;
  v35 = 1;
  atomic_compare_exchange_strong_explicit(a2 + 16, &v35, 0, memory_order_release, memory_order_relaxed);
  if (v35 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

uint64_t *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(uint64_t *result)
{
  if (!*result)
  {
    LODWORD(v1) = 0;
    goto LABEL_7;
  }

  v1 = *(*result - 12);
  if (v1 <= 1)
  {
LABEL_7:
    v4 = v1;
    v3 = 1;
    goto LABEL_8;
  }

  v2 = __clz(v1 - 1);
  if (!v2)
  {
    __break(1u);
    return result;
  }

  v3 = (1 << -v2);
  if (v1 > 0x400)
  {
    if (v3 > 2 * v1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = *(*result - 12);
LABEL_8:
  if (3 * v3 <= 4 * v4)
  {
LABEL_9:
    LODWORD(v3) = 2 * v3;
  }

LABEL_10:
  if (v3 > 0x400)
  {
    v5 = 0.416666667;
  }

  else
  {
    v5 = 0.604166667;
  }

  if (v3 * v5 <= v1)
  {
    LODWORD(v3) = 2 * v3;
  }

  if (v3 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v3;
  }

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::rehash(result, v6);
}

_DWORD *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  result = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (result + 4);
  result[2] = a2 - 1;
  result[3] = a2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (v4 + 16 * i);
      v11 = *v10;
      if (*v10 != -1)
      {
        v8 = v10[1];
        if (v11 | v8)
        {
          v12 = *a1;
          if (*a1)
          {
            v13 = *(v12 - 8);
          }

          else
          {
            v13 = 0;
          }

          v14 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v11, v8);
          v15 = 0;
          do
          {
            v16 = (v12 + 16 * (v14 & v13));
            v14 = ++v15 + (v14 & v13);
          }

          while (*v16 != 0);
          *v16 = 0;
          v17 = *v10;
          *v10 = 0;
          *v16 = v17;
          v18 = *v10;
          *v10 = 0;
          if (v18)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v18, v8);
          }
        }

        else
        {
          *v10 = 0;
        }
      }
    }
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

unint64_t WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(uint64_t a1, uint64_t a2)
{
  v2 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  v5 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  return (0xD7862706ELL * (277951225 * ((v4 >> 31) ^ v4) + 95187966 * ((v7 >> 31) ^ v7))) >> 4;
}

_DWORD *WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::expand(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v2 = *(v1 - 4)) != 0)
  {
    v3 = v2 << (6 * *(v1 - 12) >= (2 * v2));
  }

  else
  {
    v3 = 8;
  }

  return WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::rehash(a1, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice const&,WebCore::MediaDeviceHashSalts &&,WebCore::MediaConstraints &&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::CaptureSourceError const&,WebCore::RealtimeMediaSourceSettings const&,WebCore::RealtimeMediaSourceCapabilities const&)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FEB48;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice const&,WebCore::MediaDeviceHashSalts &&,WebCore::MediaConstraints &&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::CaptureSourceError const&,WebCore::RealtimeMediaSourceSettings const&,WebCore::RealtimeMediaSourceCapabilities const&)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FEB48;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice const&,WebCore::MediaDeviceHashSalts &&,WebCore::MediaConstraints &&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::CaptureSourceError const&,WebCore::RealtimeMediaSourceSettings const&,WebCore::RealtimeMediaSourceCapabilities const&)> &&)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      result = (*(**(v2 + 32) + 88))(*(v2 + 32), *(result + 16));
      if (*(v2 + 16) == 1)
      {
        v3 = *(*v2 + 24);

        return v3(v2);
      }

      else
      {
        --*(v2 + 16);
      }
    }
  }

  return result;
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 - 4);
    v8 = *(v6 - 12);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = WTF::fastZeroedMalloc((16 * a2 + 16));
  *a1 = (v9 + 4);
  v9[2] = a2 - 1;
  v9[3] = a2;
  *v9 = 0;
  v9[1] = v8;
  if (v7)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = (v6 + 16 * v11);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (v14)
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

          v18 = (v14 + ~(v14 << 32)) ^ ((v14 + ~(v14 << 32)) >> 22);
          v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
          v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
          v21 = v17 & ((v20 >> 31) ^ v20);
          v22 = 1;
          do
          {
            v23 = v21;
            v24 = *(v16 + 16 * v21);
            v21 = (v21 + v22++) & v17;
          }

          while (v24);
          v25 = (v16 + 16 * v23);
          v26 = v25[1];
          v25[1] = 0;
          if (v26)
          {
            if (v26[4] == 1)
            {
              (*(*v26 + 8))(v26);
            }

            else
            {
              --v26[4];
            }
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            if (v28[4] == 1)
            {
              (*(*v28 + 8))(v28);
            }

            else
            {
              --v28[4];
            }
          }

          if (v13 == a3)
          {
            v12 = v25;
          }
        }

        else
        {
          v15 = v13[1];
          v13[1] = 0;
          if (v15)
          {
            if (v15[4] == 1)
            {
              (*(*v15 + 8))(v15);
            }

            else
            {
              --v15[4];
            }
          }
        }
      }

      ++v11;
    }

    while (v11 != v7);
  }

  else
  {
    v12 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v10);
  return v12;
}

void *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice const&,WebCore::MediaDeviceHashSalts &&,WebCore::MediaConstraints &&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::CaptureSourceError const&,WebCore::RealtimeMediaSourceSettings const&,WebCore::RealtimeMediaSourceCapabilities const&)> &&)::$_2,void,std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FEB70;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice const&,WebCore::MediaDeviceHashSalts &&,WebCore::MediaConstraints &&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::CaptureSourceError const&,WebCore::RealtimeMediaSourceSettings const&,WebCore::RealtimeMediaSourceCapabilities const&)> &&)::$_2,void,std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEB70;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::createMediaSourceForCaptureDeviceWithConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::CaptureDevice const&,WebCore::MediaDeviceHashSalts &&,WebCore::MediaConstraints &&,BOOL,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(WebCore::CaptureSourceError const&,WebCore::RealtimeMediaSourceSettings const&,WebCore::RealtimeMediaSourceCapabilities const&)> &&)::$_2,void,std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&>::call(uint64_t *result, char *a2)
{
  v2 = result[1];
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    ++v3[4];
    if ((a2[16] & 1) == 0)
    {
      result = WebKit::UserMediaCaptureManagerProxySourceProxy::whenReady(v3, result + 2);
LABEL_22:
      if (v3[4] == 1)
      {
        return (*(*v3 + 8))(v3);
      }

      --v3[4];
      return result;
    }

    v4 = 0;
  }

  else
  {
    if ((a2[16] & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v3 = 0;
    v4 = 1;
  }

  v5 = *a2;
  v26 = 0;
  v27 = 4;
  v28 = v5;
  v22 = 4;
  v20 = 0u;
  v21 = 0u;
  memset(v19, 0, sizeof(v19));
  v25 = 0;
  v23 = 0x3FF0000000000000;
  memset(v24, 0, sizeof(v24));
  v13 = 1;
  memset(v12, 0, sizeof(v12));
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v6 = result[2];
  result[2] = 0;
  (*(*v6 + 16))(v6, &v26, v19, v12);
  (*(*v6 + 8))(v6);
  WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(v12, v7);
  v9 = *(&v21 + 1);
  *(&v21 + 1) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v21;
  *&v21 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = *(&v20 + 1);
  *(&v20 + 1) = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v8);
  }

  result = v26;
  v26 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v8);
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::UserMediaCaptureManagerProxySourceProxy,WTF::RawPtrTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>,WTF::DefaultRefDerefTraits<WebKit::UserMediaCaptureManagerProxySourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBFE88CLL);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 8);
    v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
    v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
    v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
    v8 = v4 & ((v7 >> 31) ^ v7);
    v9 = *(v3 + 16 * v8);
    if (v9 == v2)
    {
      return *(v3 + 16 * v8 + 8);
    }

    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        return *(v3 + 16 * v8 + 8);
      }
    }
  }

  return 0;
}

void *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::applyConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::MediaConstraints &&)::$_0,void,std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FEB98;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    if (v3[4] == 1)
    {
      (*(*v3 + 8))(v3);
    }

    else
    {
      --v3[4];
    }
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::applyConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::MediaConstraints &&)::$_0,void,std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEB98;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    if (v4[4] == 1)
    {
      (*(*v4 + 8))(v4);
    }

    else
    {
      --v4[4];
    }
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::applyConstraints(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::MediaConstraints &&)::$_0,void,std::optional<WebCore::RealtimeMediaSource::ApplyConstraintsError> &&>::call(uint64_t a1, char *a2)
{
  v3 = *(a1 + 24);
  if (a2[16] == 1)
  {
    v4 = *a2;
    v12 = (a1 + 8);
    v13 = v4;
    v14 = a2 + 8;
    return IPC::Connection::send<Messages::UserMediaCaptureManager::ApplyConstraintsFailed>(v3, &v12);
  }

  else
  {
    v6 = WebKit::UserMediaCaptureManagerProxySourceProxy::settings(*(a1 + 16));
    v8 = IPC::Encoder::operator new(0x238, v7);
    *v8 = 1769;
    *(v8 + 68) = 0;
    *(v8 + 70) = 0;
    *(v8 + 69) = 0;
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = 0;
    IPC::Encoder::encodeHeader(v8);
    v12 = v8;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, *(a1 + 8));
    IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSettings,void>::encode(v8, v6);
    IPC::Connection::sendMessageImpl(v3, &v12, 0, 0);
    result = v12;
    v12 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v9);
      return bmalloc::api::tzoneFree(v10, v11);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::clone(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_1,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FEBC0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::clone(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FEBC0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::UserMediaCaptureManagerProxy::clone(WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::RealtimeMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)::$_1,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      result = (*(**(v2 + 32) + 88))(*(v2 + 32), *(result + 16));
      if (*(v2 + 16) == 1)
      {
        v3 = *(*v2 + 24);

        return v3(v2);
      }

      else
      {
        --*(v2 + 16);
      }
    }
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  v18[19] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 257)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v18[0] = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", v18, " callSite:", (v5 + 24), "]");
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::takeResultRunnable(a2, &v17);
        (*(*v17 + 16))(v18);
        (*(*v5 + 24))(v5, a2, v18);
        std::experimental::fundamentals_v3::expected<WebCore::PhotoCapabilities,WTF::String>::~expected(v18, v13);
        v14 = v17;
        v17 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      else
      {
        WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::takeResult(a2, v18);
        (*(*v5 + 24))(v5, a2, v18);
        std::experimental::fundamentals_v3::expected<WebCore::PhotoCapabilities,WTF::String>::~expected(v18, v15);
      }

      v16 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (v16)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10FEBE8;
    v8[1] = v5;
    v8[2] = a2;
    v18[0] = v8;
    (*(*v7 + 16))(v7, v18);
    result = v18[0];
    v18[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

BOOL WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::hasRunnable(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 208);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 2;
}

atomic_uchar *WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::takeResultRunnable@<X0>(atomic_uchar *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[208] != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(v2 + 7);
  *(v2 + 7) = 0;
  *a2 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_uchar *WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::takeResult@<X0>(atomic_uchar *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = result + 48;
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[208] != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *a2 = 0;
  *(a2 + 144) = -1;
  v6 = v2[200];
  if (v6 != 255)
  {
    if (v2[200])
    {
      v10 = *(v2 + 7);
      *(v2 + 7) = 0;
      *a2 = v10;
    }

    else
    {
      v7 = *(v2 + 136);
      *(a2 + 64) = *(v2 + 120);
      *(a2 + 80) = v7;
      *(a2 + 96) = *(v2 + 152);
      *(a2 + 112) = v2[168];
      v8 = *(v2 + 72);
      *a2 = *(v2 + 56);
      *(a2 + 16) = v8;
      v9 = *(v2 + 104);
      *(a2 + 32) = *(v2 + 88);
      *(a2 + 48) = v9;
      *(a2 + 120) = 0;
      result = (a2 + 120);
      *(a2 + 136) = 0;
      if (v2[192] == 1)
      {
        *result = 0;
        *(a2 + 128) = 0;
        result = WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(result, v2 + 44);
        *(a2 + 136) = 1;
        LOBYTE(v6) = v2[200];
      }
    }

    *(a2 + 144) = v6;
  }

  v11 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v11, 0, memory_order_release, memory_order_relaxed);
  if (v11 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FEBE8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEBE8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v12[19] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  if (*(*a1 + 56) == 1)
  {
    v12[0] = *a1;
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", v12, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::hasRunnable(a1[1]);
    v7 = *a1;
    v8 = a1[1];
    if (hasRunnable)
    {
      WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::takeResultRunnable(v8, &v11);
      (*(*v11 + 16))(v12);
      (*(*v7 + 24))(v7, v8, v12);
      std::experimental::fundamentals_v3::expected<WebCore::PhotoCapabilities,WTF::String>::~expected(v12, v9);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<WebCore::PhotoCapabilities,WTF::String,0u>::takeResult(v8, v12);
      (*(*v7 + 24))(v7, v8, v12);
      return std::experimental::fundamentals_v3::expected<WebCore::PhotoCapabilities,WTF::String>::~expected(v12, v10);
    }
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
{
  v5 = a1;
  v18[7] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 2) || (v6 = atomic_load((a2 + 161)), v6 == 1) && (a1 = (*(**(a1 + 2) + 24))(*(a1 + 2)), a1))
  {
    if (*(v5 + 56) == 1)
    {
      v18[0] = v5;
      result = WTF::NativePromiseBase::logChannel(a1);
      if (*result)
      {
        v10 = result[16] >= 4u;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", v18, " callSite:", (v5 + 24), "]");
      }
    }

    else
    {
      v11 = *a3;
      v12 = 1;
      atomic_compare_exchange_strong_explicit(*a3, &v12, 0, memory_order_release, memory_order_relaxed);
      if (v12 != 1)
      {
        WTF::Lock::unlockSlow(v11);
      }

      if (WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::hasRunnable(a2))
      {
        WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::takeResultRunnable(a2, &v17);
        (*(*v17 + 16))(v18);
        (*(*v5 + 24))(v5, a2, v18);
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::PhotoSettings,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v18, v13);
        v14 = v17;
        v17 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      else
      {
        WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::takeResult(a2, v18);
        (*(*v5 + 24))(v5, a2, v18);
        mpark::detail::move_constructor<mpark::detail::traits<WebCore::PhotoSettings,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v18, v15);
      }

      v16 = 0;
      result = *a3;
      atomic_compare_exchange_strong_explicit(*a3, &v16, 1u, memory_order_acquire, memory_order_acquire);
      if (v16)
      {
        return MEMORY[0x19EB01E30]();
      }
    }
  }

  else
  {
    v7 = *(v5 + 2);
    atomic_fetch_add(v5 + 2, 1u);
    atomic_fetch_add((a2 + 8), 1u);
    v8 = WTF::fastMalloc(0x18);
    *v8 = &unk_1F10FEC10;
    v8[1] = v5;
    v8[2] = a2;
    v18[0] = v8;
    (*(*v7 + 16))(v7, v18);
    result = v18[0];
    v18[0] = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

BOOL WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::hasRunnable(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 112);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 2;
}

atomic_uchar *WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::takeResultRunnable@<X0>(atomic_uchar *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = (result + 48);
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[112] != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(v2 + 7);
  *(v2 + 7) = 0;
  *a2 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit(v2 + 48, &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_uchar *WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::takeResult@<X0>(atomic_uchar *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = result + 48;
  atomic_compare_exchange_strong_explicit(result + 48, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 48);
  }

  if (v2[112] != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  *a2 = 0;
  *(a2 + 48) = -1;
  v6 = v2[104];
  if (v6 != 255)
  {
    if (v2[104])
    {
      v8 = *(v2 + 7);
      *(v2 + 7) = 0;
      *a2 = v8;
    }

    else
    {
      v7 = *(v2 + 72);
      *a2 = *(v2 + 56);
      *(a2 + 16) = v7;
      *(a2 + 32) = *(v2 + 88);
    }

    *(a2 + 48) = v6;
  }

  v9 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v9, 0, memory_order_release, memory_order_relaxed);
  if (v9 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FEC10;
  v2 = a1[2];
  a1[2] = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FEC10;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4 + 2);
    (*(*v4 + 8))(v4);
  }

  return WTF::fastFree(this, a2);
}

unsigned __int8 *WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  if (*(*a1 + 56) == 1)
  {
    v12[0] = *a1;
    result = WTF::NativePromiseBase::logChannel(a1);
    if (*result)
    {
      v4 = result[16] >= 4u;
    }

    else
    {
      v4 = 0;
    }

    if (v4)
    {
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", v12, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::hasRunnable(a1[1]);
    v7 = *a1;
    v8 = a1[1];
    if (hasRunnable)
    {
      WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::takeResultRunnable(v8, &v11);
      (*(*v11 + 16))(v12);
      (*(*v7 + 24))(v7, v8, v12);
      mpark::detail::move_constructor<mpark::detail::traits<WebCore::PhotoSettings,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v12, v9);
      result = v11;
      v11 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<WebCore::PhotoSettings,WTF::String,0u>::takeResult(v8, v12);
      (*(*v7 + 24))(v7, v8, v12);
      return mpark::detail::move_constructor<mpark::detail::traits<WebCore::PhotoSettings,WTF::String>,(mpark::detail::Trait)1>::~move_constructor(v12, v10);
    }
  }

  return result;
}

uint64_t WebKit::AutomationSessionClient::AutomationSessionClient(uint64_t a1, void *a2)
{
  *a1 = &unk_1F10FEC38;
  *(a1 + 8) = 0;
  objc_initWeak((a1 + 8), a2);
  *(a1 + 16) = *(a1 + 16) & 0xFFFE | objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFFD | v3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFFB | v4;
  if (objc_opt_respondsToSelector())
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFF7 | v5;
  if (objc_opt_respondsToSelector())
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFEF | v6;
  if (objc_opt_respondsToSelector())
  {
    v7 = 32;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFDF | v7;
  if (objc_opt_respondsToSelector())
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFBF | v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = 128;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFF7F | v9;
  if (objc_opt_respondsToSelector())
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFEFF | v10;
  if (objc_opt_respondsToSelector())
  {
    v11 = 512;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFDFF | v11;
  if (objc_opt_respondsToSelector())
  {
    v12 = 1024;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFBFF | v12;
  if (objc_opt_respondsToSelector())
  {
    v13 = 2048;
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xF7FF | v13;
  if (objc_opt_respondsToSelector())
  {
    v14 = 4096;
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xEFFF | v14;
  if (objc_opt_respondsToSelector())
  {
    v15 = 0x2000;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xDFFF | v15;
  if (objc_opt_respondsToSelector())
  {
    v16 = 0x4000;
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xBFFF | v16;
  return a1;
}

void WebKit::AutomationSessionClient::didDisconnectFromRemote(id *this, WebKit::WebAutomationSession *a2)
{
  if (this[2])
  {
    WeakRetained = objc_loadWeakRetained(this + 1);
    v4 = *(a2 + 1);
    v6 = WeakRetained;
    if (v4 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), WeakRetained = v6, (isKindOfClass & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      [WeakRetained _automationSessionDidDisconnectFromRemote:v4];
      if (v6)
      {
      }
    }
  }
}

void sub_19DC00110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void WebKit::AutomationSessionClient::requestNewPageWithOptions(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v7 = *(a2 + 8);
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      __break(0xC471u);
    }

    else
    {
      v8 = *a4;
      *a4 = 0;
      v9 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
      *v9 = MEMORY[0x1E69E9818];
      v9[1] = 50331650;
      v9[2] = WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebKit::AutomationSessionClient::requestNewPageWithOptions(WebKit::WebAutomationSession &,API::AutomationSessionBrowsingContextOptions,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::$_0>(WebKit::AutomationSessionClient::requestNewPageWithOptions(WebKit::WebAutomationSession &,API::AutomationSessionBrowsingContextOptions,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::$_0)::{lambda(void *,WKWebView *)#1}::__invoke;
      v9[3] = &WTF::BlockPtr<void ()(WKWebView *)>::fromCallable<WebKit::AutomationSessionClient::requestNewPageWithOptions(WebKit::WebAutomationSession &,API::AutomationSessionBrowsingContextOptions,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::$_0>(WebKit::AutomationSessionClient::requestNewPageWithOptions(WebKit::WebAutomationSession &,API::AutomationSessionBrowsingContextOptions,WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)> &&)::$_0)::descriptor;
      v9[4] = v8;
      [WeakRetained _automationSession:v7 requestNewWebViewWithOptions:a3 & 1 completionHandler:v9];
      _Block_release(v9);
      if (WeakRetained)
      {
      }
    }
  }

  else
  {

    WTF::CompletionHandler<void ()(WebKit::WebPageProxy *)>::operator()(a4);
  }
}

void sub_19DC00298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v10);
  if (a10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::AutomationSessionClient::requestSwitchToPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 32) + 2248));
  if (WeakRetained && (*(a1 + 16) & 4) != 0)
  {
    v8 = objc_loadWeakRetained((a1 + 8));
    v9 = *(a2 + 8);
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }
    }

    v10 = *a4;
    *a4 = 0;
    v11 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v11[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::descriptor;
    v11[4] = v10;
    [v8 _automationSession:v9 requestSwitchToWebView:WeakRetained completionHandler:v11];
    _Block_release(v11);
    v7 = WeakRetained;
    if (v8)
    {

      v7 = WeakRetained;
    }
  }

  else
  {
    WTF::CompletionHandler<void ()(void)>::operator()(a4);
    v7 = WeakRetained;
    if (!WeakRetained)
    {
      return;
    }
  }
}

void sub_19DC00464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v11);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::AutomationSessionClient::requestHideWindowOfPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 32) + 2248));
  if (WeakRetained && (*(a1 + 16) & 8) != 0)
  {
    v8 = objc_loadWeakRetained((a1 + 8));
    v9 = *(a2 + 8);
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }
    }

    v10 = *a4;
    *a4 = 0;
    v11 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v11[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::descriptor;
    v11[4] = v10;
    [v8 _automationSession:v9 requestHideWindowOfWebView:WeakRetained completionHandler:v11];
    _Block_release(v11);
    v7 = WeakRetained;
    if (v8)
    {

      v7 = WeakRetained;
    }
  }

  else
  {
    WTF::CompletionHandler<void ()(void)>::operator()(a4);
    v7 = WeakRetained;
    if (!WeakRetained)
    {
      return;
    }
  }
}

void sub_19DC00648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v11);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::AutomationSessionClient::requestRestoreWindowOfPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 32) + 2248));
  if (WeakRetained && (*(a1 + 16) & 0x10) != 0)
  {
    v8 = objc_loadWeakRetained((a1 + 8));
    v9 = *(a2 + 8);
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }
    }

    v10 = *a4;
    *a4 = 0;
    v11 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v11[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::descriptor;
    v11[4] = v10;
    [v8 _automationSession:v9 requestRestoreWindowOfWebView:WeakRetained completionHandler:v11];
    _Block_release(v11);
    v7 = WeakRetained;
    if (v8)
    {

      v7 = WeakRetained;
    }
  }

  else
  {
    WTF::CompletionHandler<void ()(void)>::operator()(a4);
    v7 = WeakRetained;
    if (!WeakRetained)
    {
      return;
    }
  }
}

void sub_19DC0082C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v11);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

void WebKit::AutomationSessionClient::requestMaximizeWindowOfPage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 32) + 2248));
  if (WeakRetained && (*(a1 + 16) & 0x20) != 0)
  {
    v8 = objc_loadWeakRetained((a1 + 8));
    v9 = *(a2 + 8);
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __break(0xC471u);
        return;
      }
    }

    v10 = *a4;
    *a4 = 0;
    v11 = malloc_type_malloc(0x28uLL, 0x10E004053C0834CuLL);
    *v11 = MEMORY[0x1E69E9818];
    v11[1] = 50331650;
    v11[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::{lambda(void *)#1}::__invoke;
    v11[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)>)::descriptor;
    v11[4] = v10;
    [v8 _automationSession:v9 requestMaximizeWindowOfWebView:WeakRetained completionHandler:v11];
    _Block_release(v11);
    v7 = WeakRetained;
    if (v8)
    {

      v7 = WeakRetained;
    }
  }

  else
  {
    WTF::CompletionHandler<void ()(void)>::operator()(a4);
    v7 = WeakRetained;
    if (!WeakRetained)
    {
      return;
    }
  }
}

void sub_19DC00A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  _Block_release(v11);
  if (v10)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::AutomationSessionClient::isShowingJavaScriptDialogOnPage(WebKit::AutomationSessionClient *this, WebKit::WebAutomationSession *a2, WebKit::WebPageProxy *a3)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (!WeakRetained)
  {
    return 0;
  }

  v6 = WeakRetained;
  if ((*(this + 8) & 0x40) == 0)
  {
    v7 = 0;
LABEL_9:

    return v7;
  }

  v8 = objc_loadWeakRetained(this + 1);
  v9 = *(a2 + 1);
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v8 _automationSession:v9 isShowingJavaScriptDialogForWebView:v6];
    if (v8)
    {
    }

    goto LABEL_9;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

void WebKit::AutomationSessionClient::dismissCurrentJavaScriptDialogOnPage(id *this, WebKit::WebAutomationSession *a2, WebKit::WebPageProxy *a3)
{
  WeakRetained = objc_loadWeakRetained((*(a3 + 4) + 2248));
  if (WeakRetained)
  {
    if ((this[2] & 0x80) != 0)
    {
      v5 = objc_loadWeakRetained(this + 1);
      v6 = *(a2 + 1);
      if (v6)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __break(0xC471u);
          return;
        }
      }

      [v5 _automationSession:v6 dismissCurrentJavaScriptDialogForWebView:WeakRetained];
      if (v5)
      {
      }
    }
  }
}