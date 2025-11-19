@interface WKScrollingNodeScrollViewDelegate
- (BOOL)shouldAllowPanGestureRecognizerToReceiveTouchesInScrollView:(id)a3;
- (WKScrollingNodeScrollViewDelegate)initWithScrollingTreeNodeDelegate:(void *)a3;
- (id)parentScrollViewForScrollView:(id)a3;
- (unint64_t)axesToPreventScrollingForPanGestureInScrollView:(id)a3;
- (void)cancelPointersForGestureRecognizer:(id)a3;
- (void)scrollView:(id)a3 handleScrollUpdate:(id)a4 completion:(id)a5;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
@end

@implementation WKScrollingNodeScrollViewDelegate

- (WKScrollingNodeScrollViewDelegate)initWithScrollingTreeNodeDelegate:(void *)a3
{
  v11.receiver = self;
  v11.super_class = WKScrollingNodeScrollViewDelegate;
  v5 = [(WKScrollingNodeScrollViewDelegate *)&v11 init];
  if (v5)
  {
    if (!*(a3 + 3))
    {
      v6 = WTF::fastCompactMalloc(0x10);
      *v6 = 1;
      *(v6 + 8) = a3;
      v7 = *(a3 + 3);
      *(a3 + 3) = v6;
      if (v7)
      {
        if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v7);
          WTF::fastFree(v7, v4);
        }
      }
    }

    v8 = *(a3 + 3);
    atomic_fetch_add(v8, 1u);
    m_ptr = v5->_scrollingTreeNodeDelegate.m_impl.m_ptr;
    v5->_scrollingTreeNodeDelegate.m_impl.m_ptr = v8;
    if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, m_ptr);
      WTF::fastFree(m_ptr, v4);
    }
  }

  return v5;
}

- (void)scrollViewDidScroll:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);
    if (v4)
    {
      ++*(v4 + 32);
      v7 = WTF::dynamic_objc_cast<WKBaseScrollView>(a3);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        [v8 updateInteractiveScrollVelocity];
      }

      [a3 contentOffset];
      v13.x = v10;
      v13.y = v11;
      WebCore::FloatPoint::FloatPoint(v14, &v13);
      WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollViewDidScroll(v4, self->_inUserInteraction, v14[0], v14[1]);
      v12 = *(v4 + 32);
      if (v12)
      {
        *(v4 + 32) = v12 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);
    if (v4)
    {
      ++*(v4 + 32);
      self->_inUserInteraction = 1;
      if ([objc_msgSend(a3 "panGestureRecognizer")] == 1)
      {
        WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v16, v4);
        v5 = v16;
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v4 + 16), *(v4 + 8), &v17);
        v6 = v17;
        v17 = 0;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v6 + 8), v7);
        (*(*v5 + 176))(v5, *(v6 + 56), *(v6 + 64));
        v9 = v16;
        v16 = 0;
        if (v9)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v9 + 8), v8);
        }
      }

      WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v16, v4);
      v10 = v16;
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v4 + 16), *(v4 + 8), &v17);
      v11 = v17;
      v17 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v11 + 8), v12);
      (*(*v10 + 184))(v10, *(v11 + 56), *(v11 + 64));
      v14 = v16;
      v16 = 0;
      if (v14)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v14 + 8), v13);
      }

      v15 = *(v4 + 32);
      if (v15)
      {
        *(v4 + 32) = v15 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (m_ptr)
  {
    v6 = *(m_ptr + 1);
    if (v6)
    {
      ++*(v6 + 32);
      if (([a3 isZooming] & 1) == 0)
      {
        v10 = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
        if (!v10 || (v11 = *(v10 + 1)) == 0)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDDCF20);
        }

        v12 = *(v11 + 64);
        *(v6 + 64) = 0;
        if (v12)
        {
          v13 = (v12 & 5) == 0;
        }

        else
        {
          v13 = 0;
        }

        if (v13)
        {
          v14 = [WTF::dynamic_objc_cast<WKBaseScrollView>(a3) axesToPreventMomentumScrolling];
          v15 = v14;
          if (v12 & 8) == 0 || (v14)
          {
            [a3 contentOffset];
            a5->x = v16;
          }

          if ((v12 & 0x10) == 0 || (v15 & 2) != 0)
          {
            [a3 contentOffset];
            a5->y = v17;
          }
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v6 + 16), *(v6 + 8), &v71);
      v18 = v71;
      v71 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v18 + 1, v19);
      v20 = WebCore::ScrollingTreeScrollingNode::currentHorizontalSnapPointIndex(v18);
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v6 + 16), *(v6 + 8), &v71);
      v21 = v71;
      v71 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v21 + 1, v22);
      v23 = WebCore::ScrollingTreeScrollingNode::currentVerticalSnapPointIndex(v21);
      [a3 bounds];
      Width = CGRectGetWidth(v76);
      [a3 bounds];
      Height = CGRectGetHeight(v77);
      v26 = Width;
      *&Height = Height;
      v73 = v26;
      v74 = LODWORD(Height);
      v27 = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
      if (!v27)
      {
        goto LABEL_52;
      }

      v28 = *(v27 + 1);
      if (!v28)
      {
        goto LABEL_52;
      }

      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v28 + 16), *(v28 + 8), &v71);
      v29 = v71;
      v71 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v29 + 1, v30);
      v31 = WebCore::ScrollingTreeScrollingNode::snapOffsetsInfo(v29);
      if (*(v31 + 20))
      {
        WebCore::FloatPoint::FloatPoint(&v75, a5);
        [a3 contentOffset];
        v32 = WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>::closestSnapOffset<WebCore::FloatSize,WebCore::FloatPoint>();
        v33 = *&v32;
        v71 = v32;
        v72 = v34;
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v6 + 16), *(v6 + 8), &v75);
        v35 = v75;
        v75 = 0;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v35 + 8), v36);
        WebCore::ScrollingTreeScrollingNode::setCurrentHorizontalSnapPointIndex();
        x = a5->x;
        if (a5->x >= 0.0)
        {
          [a3 contentSize];
          if (x <= v38)
          {
            a5->x = v33;
          }
        }
      }

      if (*(v31 + 36))
      {
        WebCore::FloatPoint::FloatPoint(&v75, a5);
        [a3 contentOffset];
        v39 = WebCore::ScrollSnapOffsetsInfo<float,WebCore::FloatRect>::closestSnapOffset<WebCore::FloatSize,WebCore::FloatPoint>();
        v40 = *&v39;
        v71 = v39;
        v72 = v41;
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v6 + 16), *(v6 + 8), &v75);
        v42 = v75;
        v75 = 0;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref((v42 + 8), v43);
        WebCore::ScrollingTreeScrollingNode::setCurrentVerticalSnapPointIndex();
        y = a5->y;
        if (y >= 0.0)
        {
          [a3 contentSize];
          if (y <= v45)
          {
            a5->y = v40;
          }
        }
      }

      v46 = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
      if (!v46 || (v47 = *(v46 + 1)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDDCEE0);
      }

      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v47 + 16), *(v47 + 8), &v71);
      v48 = v71;
      v71 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v48 + 1, v49);
      v50 = WebCore::ScrollingTreeScrollingNode::currentHorizontalSnapPointIndex(v48);
      if ((v50 & v20 & 0x100000000) != 0)
      {
        if (v20 != v50)
        {
          goto LABEL_35;
        }
      }

      else if (((v20 & 0x100000000) != 0) != (BYTE4(v50) & 1))
      {
        goto LABEL_35;
      }

      v51 = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
      if (!v51 || (v52 = *(v51 + 1)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDDCF40);
      }

      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v52 + 16), *(v52 + 8), &v71);
      v53 = v71;
      v71 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v53 + 1, v54);
      v55 = WebCore::ScrollingTreeScrollingNode::currentVerticalSnapPointIndex(v53);
      if ((v55 & v23 & 0x100000000) != 0)
      {
        if (v23 == v55)
        {
          goto LABEL_40;
        }
      }

      else if (((v23 & 0x100000000) != 0) == (BYTE4(v55) & 1))
      {
        goto LABEL_40;
      }

LABEL_35:
      v56 = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
      if (!v56 || (v57 = *(v56 + 1)) == 0)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDDCF00);
      }

      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v57 + 16), *(v57 + 8), &v71);
      v58 = v71;
      v71 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v58 + 1, v59);
      v60 = WebCore::ScrollingTreeScrollingNode::currentHorizontalSnapPointIndex(v58);
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v6 + 16), *(v6 + 8), &v71);
      v61 = v71;
      v71 = 0;
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v61 + 1, v62);
      v63 = WebCore::ScrollingTreeScrollingNode::currentVerticalSnapPointIndex(v61);
      if ((*(v6 + 65) & 1) == 0)
      {
        v64 = v63;
        WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v75, v6);
        v65 = v75;
        WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::RemoteMediaPlayerManager>(*(v6 + 16), *(v6 + 8), &v71);
        v66 = v71;
        v71 = 0;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v66 + 1, v67);
        (*(*v65 + 256))(v65, v66[7], v66[8], v60 & 0xFFFFFFFFFFLL, v64 & 0xFFFFFFFFFFLL);
        v69 = v75;
        v75 = 0;
        if (v69)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v69 + 8), v68);
        }
      }

LABEL_40:
      v70 = *(v6 + 32);
      if (v70)
      {
        *(v6 + 32) = v70 - 1;
        return;
      }

LABEL_52:
      __break(0xC471u);
      JUMPOUT(0x19DDDCEC0);
    }
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (m_ptr)
  {
    v5 = *(m_ptr + 1);
    if (v5)
    {
      v7 = *(v5 + 32) + 1;
      *(v5 + 32) = v7;
      if (self->_inUserInteraction && !a4)
      {
        self->_inUserInteraction = 0;
        [a3 contentOffset];
        v10.x = v8;
        v10.y = v9;
        WebCore::FloatPoint::FloatPoint(v11, &v10);
        WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollViewDidScroll(v5, self->_inUserInteraction, v11[0], v11[1]);
        WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollDidEnd(v5);
        v7 = *(v5 + 32);
      }

      if (v7)
      {
        *(v5 + 32) = v7 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);
    if (v4)
    {
      v6 = *(v4 + 32) + 1;
      *(v4 + 32) = v6;
      if (self->_inUserInteraction)
      {
        self->_inUserInteraction = 0;
        [a3 contentOffset];
        v9.x = v7;
        v9.y = v8;
        WebCore::FloatPoint::FloatPoint(v10, &v9);
        WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollViewDidScroll(v4, self->_inUserInteraction, v10[0], v10[1]);
        WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollDidEnd(v4);
        v6 = *(v4 + 32);
      }

      if (v6)
      {
        *(v4 + 32) = v6 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);
    if (v4)
    {
      ++*(v4 + 8);
      WebKit::ScrollingTreeScrollingNodeDelegateIOS::scrollDidEnd(v4);
      v5 = *(v4 + 8);
      if (v5)
      {
        *(v4 + 8) = v5 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

- (void)scrollViewWillBeginZooming:(id)a3 withView:(id)a4
{
  v5 = [a3 pinchGestureRecognizer];

  [(WKScrollingNodeScrollViewDelegate *)self cancelPointersForGestureRecognizer:v5];
}

- (void)cancelPointersForGestureRecognizer:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v4 = *(m_ptr + 1);
  if (!v4)
  {
    return;
  }

  ++*(v4 + 8);
  WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v16, v4);
  if (!(*(*v16 + 32))(v16))
  {
    goto LABEL_19;
  }

  v7 = v16;
  v16 = 0;
  v8 = *(v7 + 376);
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v7 + 8), v6);
  v11 = v16;
  v16 = 0;
  if (v11)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v11 + 8), v10);
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v12 = *(*(v9 + 24) + 8);
  if (!v12)
  {
LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x19DDDD50CLL);
  }

  v13 = *(v12 + 40);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      (*(*v14 + 1712))(v14);
      (*(*v14 + 1872))(v14, a3);
      (*(*v14 + 1720))(v14);
    }
  }

LABEL_14:
  v15 = *(v4 + 8);
  if (!v15)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDDD52CLL);
  }

  *(v4 + 8) = v15 - 1;
}

- (BOOL)shouldAllowPanGestureRecognizerToReceiveTouchesInScrollView:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (m_ptr)
  {
    v4 = *(m_ptr + 1);
    if (v4)
    {
      ++*(v4 + 8);
      WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v19, v4);
      if (!(*(*v19 + 32))(v19))
      {
        __break(0xC471u);
        goto LABEL_27;
      }

      v6 = v19;
      v19 = 0;
      v7 = *(v6 + 376);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), *(v7 + 8));
          v8 = *(v8 + 8);
          if (v8)
          {
            atomic_fetch_add(v8, 1u);
          }
        }
      }

      else
      {
        v8 = 0;
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v6 + 8), v5);
      v11 = v19;
      v19 = 0;
      if (v11)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v11 + 8), v10);
      }

      if (!v8)
      {
        LOBYTE(v9) = 1;
LABEL_22:
        v16 = *(v4 + 8);
        if (v16)
        {
          *(v4 + 8) = v16 - 1;
          return v9;
        }

        __break(0xC471u);
LABEL_27:
        JUMPOUT(0x19DDDD7ECLL);
      }

      v12 = *(v8 + 8);
      if (v12)
      {
        WebKit::RemoteScrollingCoordinatorProxy::protectedWebPageProxy(v12, &v18);
        v13 = v18;
        v14 = *(v18 + 56);
        if (v14)
        {
          v15 = *(v14 + 8);
          if (v15)
          {
            (*(*v15 + 1712))(v15);
            CFRelease(*(v13 + 8));
            v9 = (*(*v15 + 1240))(v15) ^ 1;
            (*(*v15 + 1720))(v15);
            goto LABEL_20;
          }
        }

        CFRelease(*(v18 + 8));
      }

      LOBYTE(v9) = 1;
LABEL_20:
      if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v8);
        WTF::fastFree(v8, v10);
      }

      goto LABEL_22;
    }
  }

  LOBYTE(v9) = 1;
  return v9;
}

- (unint64_t)axesToPreventScrollingForPanGestureInScrollView:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v4 = *(m_ptr + 1);
  if (!v4)
  {
    return 0;
  }

  ++*(v4 + 32);
  v7 = [a3 panGestureRecognizer];
  WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v28, v4);
  if (!(*(*v28 + 32))(v28))
  {
    goto LABEL_43;
  }

  v9 = v28;
  v28 = 0;
  v10 = *(v9 + 376);
  if (v10)
  {
    v11 = *(v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v9 + 8), v8);
  v14 = v28;
  v28 = 0;
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v14 + 8), v13);
  }

  if (v11)
  {
    v15 = *(*(v11 + 24) + 8);
    if (v15)
    {
      v16 = *(v15 + 40);
      if (v16)
      {
        v17 = *(v16 + 8);
        if (v17)
        {
          (*(*v17 + 1712))(v17);
          v18 = (*(*v17 + 1880))(v17, v7);
          if ((v18 & 0x100000000) != 0)
          {
            v29 = v18;
            ShouldValidate = WTF::HashTable<unsigned int,WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned int,WTF::OptionSet<WebCore::TouchAction>>>,WTF::DefaultHash<unsigned int>,WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned int>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<unsigned int,WTF::OptionSet<WebCore::TouchAction>,WTF::DefaultHash<unsigned int>,WTF::HashTraits<unsigned int>,WTF::HashTraits<WTF::OptionSet<WebCore::TouchAction>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<unsigned int>>,(WTF::ShouldValidateKey)1,unsigned int>((v11 + 152), &v29);
            v20 = *(v11 + 152);
            if (v20)
            {
              v20 += 8 * *(v20 - 4);
            }

            if (v20 == ShouldValidate)
            {
              v21 = 0;
            }

            else
            {
              v21 = *(ShouldValidate + 4);
            }

            *(v4 + 64) = v21;
          }

          (*(*v17 + 1720))(v17);
        }
      }

      goto LABEL_22;
    }

LABEL_43:
    __break(0xC471u);
    JUMPOUT(0x19DDDDB78);
  }

LABEL_22:
  v22 = *(v4 + 64);
  if (v22)
  {
    if ((*(v4 + 64) & 5) == 0)
    {
      if ((*(v4 + 64) & 8) != 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }

      if ((*(v4 + 64) & 0x10) != 0)
      {
        v23 = (v22 & 8) == 0;
      }

      else
      {
        v23 = v12;
      }

      [v7 translationInView:{a3, v28}];
      if ((v22 & 8) != 0 && fabs(v24) > 2.22044605e-16 || (v22 & 0x10) != 0 && (v12 = (v22 & 8) == 0, fabs(v25) > 2.22044605e-16))
      {
        [(WKScrollingNodeScrollViewDelegate *)self cancelPointersForGestureRecognizer:v7];
        v12 = v23;
      }

      goto LABEL_35;
    }
  }

  else
  {
    [(WKScrollingNodeScrollViewDelegate *)self cancelPointersForGestureRecognizer:v7, v28];
  }

  v12 = 0;
LABEL_35:
  v26 = *(v4 + 32);
  if (!v26)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDDDB98);
  }

  *(v4 + 32) = v26 - 1;
  return v12;
}

- (id)parentScrollViewForScrollView:(id)a3
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (!m_ptr)
  {
    return 0;
  }

  v4 = *(m_ptr + 1);
  if (!v4)
  {
    return 0;
  }

  ++*(v4 + 8);
  WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v17, v4);
  if (!(*(*v17 + 32))(v17))
  {
    goto LABEL_19;
  }

  v7 = v17;
  v17 = 0;
  v8 = *(v7 + 376);
  if (v8)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v7 + 8), v6);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v12 + 8), v11);
  }

  if (v9 && (v13 = WebKit::RemoteScrollingCoordinatorProxy::layerTreeHost(v9)) != 0 && (ActingScrollParent = WebKit::findActingScrollParent(a3, v13, v14)) != 0)
  {
    objc_opt_class();
    result = (objc_opt_isKindOfClass() & 1) != 0 ? ActingScrollParent : 0;
  }

  else
  {
    result = 0;
  }

  v16 = *(v4 + 8);
  if (!v16)
  {
LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x19DDDDD94);
  }

  *(v4 + 8) = v16 - 1;
  return result;
}

- (void)scrollView:(id)a3 handleScrollUpdate:(id)a4 completion:(id)a5
{
  m_ptr = self->_scrollingTreeNodeDelegate.m_impl.m_ptr;
  if (!m_ptr)
  {
    return;
  }

  v6 = *(m_ptr + 1);
  if (!v6)
  {
    return;
  }

  ++*(v6 + 8);
  WebCore::ScrollingTreeScrollingNodeDelegate::scrollingTree(&v20, v6);
  if (!(*(*v20 + 32))(v20))
  {
    goto LABEL_19;
  }

  v11 = v20;
  v20 = 0;
  v12 = *(v11 + 376);
  if (v12)
  {
    v13 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v11 + 8), v10);
  v15 = v20;
  v20 = 0;
  if (v15)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v15 + 8), v14);
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v16 = *(*(v13 + 24) + 8);
  if (!v16)
  {
LABEL_19:
    __break(0xC471u);
    JUMPOUT(0x19DDDDFC4);
  }

  v17 = *(v16 + 40);
  if (v17)
  {
    v18 = *(v17 + 8);
    if (v18)
    {
      (*(*v18 + 1712))(v18);
      (*(*v18 + 1232))(v18, a3, a4, a5);
      (*(*v18 + 1720))(v18);
    }
  }

LABEL_14:
  v19 = *(v6 + 8);
  if (!v19)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDDDFE4);
  }

  *(v6 + 8) = v19 - 1;
}

@end