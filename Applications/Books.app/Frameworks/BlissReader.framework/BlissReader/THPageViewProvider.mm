@interface THPageViewProvider
- (BOOL)p_recursivelyFindPageInfos:(id)a3 callingBlock:(id)a4;
- (CGRect)p_unclippedVisibleBounds;
- (CGSize)pageSize;
- (THPageViewProvider)initWithInteractiveCanvasController:(id)a3 pageSize:(CGSize)a4;
- (id)layerAndSubviewHostForPageInfo:(id)a3;
- (id)p_pageInfoForAbsolutePageIndex:(unint64_t)a3;
- (id)pageHostForAbsolutePageIndex:(unint64_t)a3;
- (int64_t)p_relativePageIndexForPageInfo:(id)a3;
- (void)canvasDidLayout;
- (void)canvasDidLayoutAndRenderOnBackgroundThread;
- (void)canvasDidStopScrolling;
- (void)dealloc;
- (void)enumeratePageHostsUsingBlock:(id)a3;
- (void)p_recyclePageHosts;
- (void)p_updatePageViewsWithInfos:(id)a3;
- (void)p_updatePageViewsWithInfos:(id)a3 removeUnused:(BOOL)a4;
- (void)p_updateRenderedPageHosts;
- (void)pageLayerAndSubviewHostRecycle:(id)a3;
- (void)popDisabled;
- (void)syncPerformBlock:(id)a3;
- (void)teardown;
@end

@implementation THPageViewProvider

- (THPageViewProvider)initWithInteractiveCanvasController:(id)a3 pageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v10.receiver = self;
  v10.super_class = THPageViewProvider;
  v7 = [(THPageViewProvider *)&v10 init];
  if (v7)
  {
    v7->_icc = a3;
    v7->_pageSize.width = width;
    v7->_pageSize.height = height;
    v7->_pageHostMutex = dispatch_queue_create("com.apple.iBooks.THPageViewProvider.mutex", 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7->_previewLoadQueue = dispatch_queue_create("com.apple.iBooks.THPageViewProvider.previewLoadQueue", v8);
    v7->_previewEnabled = 1;
    [(THPageViewProvider *)v7 p_updatePageViewsWithInfos:[(TSDInteractiveCanvasController *)v7->_icc infosToDisplay]];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THPageViewProvider;
  [(THPageViewProvider *)&v3 dealloc];
}

- (void)teardown
{
  [(THPageViewProvider *)self p_updatePageViewsWithInfos:0 removeUnused:1];
  if ([(TSURetainedPointerKeyDictionary *)self->_pageInfoToPageHost count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->_pageInfoToPageHost = 0;
  self->_pageHostForRecycling = 0;
  pageHostMutex = self->_pageHostMutex;
  if (pageHostMutex)
  {
    dispatch_barrier_sync(pageHostMutex, &stru_45C110);
    dispatch_release(self->_pageHostMutex);
    self->_pageHostMutex = 0;
  }

  previewLoadQueue = self->_previewLoadQueue;
  if (previewLoadQueue)
  {
    dispatch_barrier_sync(previewLoadQueue, &stru_45C130);
    dispatch_release(self->_previewLoadQueue);
    self->_previewLoadQueue = 0;
  }

  self->_delegate = 0;
}

- (BOOL)p_recursivelyFindPageInfos:(id)a3 callingBlock:(id)a4
{
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(a3);
        }

        objc_opt_class();
        v11 = TSUDynamicCast();
        if (v11)
        {
          (*(a4 + 2))(a4, v11, &v19);
        }

        else
        {
          v12 = TSUProtocolCast();
          if (v12)
          {
            v19 = -[THPageViewProvider p_recursivelyFindPageInfos:callingBlock:](self, "p_recursivelyFindPageInfos:callingBlock:", [v12 childInfos], a4);
          }
        }

        if (v19)
        {
          v13 = 1;
          return v13 & 1;
        }
      }

      v8 = [a3 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v13 = v19;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (void)p_updatePageViewsWithInfos:(id)a3
{
  v5 = [(TSDInteractiveCanvasController *)self->_icc currentlyWaitingOnThreadedLayoutAndRender]^ 1;

  [(THPageViewProvider *)self p_updatePageViewsWithInfos:a3 removeUnused:v5];
}

- (int64_t)p_relativePageIndexForPageInfo:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    v5 = [(THPageViewProviderDelegate *)self->_delegate pageViewProvider:self absolutePageIndexForPageInfo:a3];
  }

  else
  {
    v5 = [a3 absolutePageIndex];
  }

  return v5 - [(THPageViewProviderDelegate *)self->_delegate pageViewProviderStartAbsolutePageIndex:self];
}

- (void)p_updatePageViewsWithInfos:(id)a3 removeUnused:(BOOL)a4
{
  v7 = objc_alloc_init(NSMutableArray);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_71430;
  v22[3] = &unk_45C158;
  v22[4] = v7;
  [(THPageViewProvider *)self p_recursivelyFindPageInfos:a3 callingBlock:v22];
  v8 = objc_alloc_init(NSMutableArray);
  pageSize = self->_pageSize;
  [(TSDInteractiveCanvasController *)self->_icc viewScale];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_7143C;
  v19 = sub_7144C;
  v20 = 0;
  pageHostMutex = self->_pageHostMutex;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_71458;
  v11[3] = &unk_45C180;
  v11[4] = v7;
  v11[5] = self;
  v12 = pageSize;
  v13 = v10;
  v11[6] = v8;
  v11[7] = &v15;
  v14 = a4;
  dispatch_sync(pageHostMutex, v11);
  if ([v8 count])
  {
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_icc "layerHost")];
    [(THPageViewProviderDelegate *)self->_delegate pageViewProviderViewsAdded:self pageIndexSet:v16[5]];
  }

  [(THPageViewProvider *)self p_recyclePageHosts];
  _Block_object_dispose(&v15, 8);
}

- (void)p_recyclePageHosts
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!self->_pageHostMutex)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = objc_alloc_init(NSMutableArray);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_7143C;
  v18 = sub_7144C;
  v19 = 0;
  pageHostMutex = self->_pageHostMutex;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_71A5C;
  block[3] = &unk_45BDE8;
  block[5] = v3;
  block[6] = &v14;
  block[4] = self;
  dispatch_sync(pageHostMutex, block);
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_icc "layerHost")];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v15[5];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * i) teardown];
      }

      v6 = [v5 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v6);
  }

  _Block_object_dispose(&v14, 8);
}

- (CGRect)p_unclippedVisibleBounds
{
  delegate = self->_delegate;
  if (delegate)
  {
    [(THPageViewProviderDelegate *)delegate pageViewProviderUnclippedVisibleBounds:self];
  }

  else
  {
    [(TSDInteractiveCanvasController *)self->_icc visibleBoundsRect];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)p_updateRenderedPageHosts
{
  [(THPageViewProvider *)self p_unclippedVisibleBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TSDInteractiveCanvasController *)self->_icc currentlyScrolling];
  pageHostMutex = self->_pageHostMutex;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_71D50;
  v13[3] = &unk_45C1A8;
  v13[4] = self;
  v13[5] = v4;
  v13[6] = v6;
  v13[7] = v8;
  v13[8] = v10;
  v14 = v11;
  dispatch_sync(pageHostMutex, v13);
}

- (void)canvasDidStopScrolling
{
  if (([(TSDInteractiveCanvasController *)self->_icc currentlyWaitingOnThreadedLayoutAndRender]& 1) == 0 && !self->_disabledCount)
  {
    [(THPageViewProvider *)self p_recyclePageHosts];
  }

  [(THPageViewProvider *)self p_updateRenderedPageHosts];
}

- (void)canvasDidLayout
{
  if (([(TSDInteractiveCanvasController *)self->_icc currentlyWaitingOnThreadedLayoutAndRender]& 1) == 0)
  {
    [(THPageViewProvider *)self p_updateRenderedPageHosts];
    if (!self->_disabledCount)
    {
      if (+[NSThread isMainThread])
      {

        [(THPageViewProvider *)self p_recyclePageHosts];
      }
    }
  }
}

- (void)canvasDidLayoutAndRenderOnBackgroundThread
{
  if (([(TSDInteractiveCanvasController *)self->_icc currentlyWaitingOnThreadedLayoutAndRender]& 1) == 0 && !self->_disabledCount)
  {
    [(THPageViewProvider *)self p_updateRenderedPageHosts];

    [(THPageViewProvider *)self p_recyclePageHosts];
  }
}

- (void)popDisabled
{
  disabledCount = self->_disabledCount;
  if (disabledCount)
  {
    self->_disabledCount = disabledCount - 1;
    if (([(TSDInteractiveCanvasController *)self->_icc currentlyWaitingOnThreadedLayoutAndRender]& 1) == 0 && !self->_disabledCount)
    {

      [(THPageViewProvider *)self p_updateRenderedPageHosts];
    }
  }
}

- (id)p_pageInfoForAbsolutePageIndex:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = sub_7143C;
  v13 = sub_7144C;
  v14 = 0;
  v5 = [(TSDInteractiveCanvasController *)self->_icc infosToDisplay];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_72110;
  v8[3] = &unk_45C1D0;
  v8[4] = &v9;
  v8[5] = a3;
  [(THPageViewProvider *)self p_recursivelyFindPageInfos:v5 callingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)pageHostForAbsolutePageIndex:(unint64_t)a3
{
  v5 = [(THPageViewProvider *)self p_pageInfoForAbsolutePageIndex:?];
  if (!v5 || (result = [(TSURetainedPointerKeyDictionary *)self->_pageInfoToPageHost objectForKey:v5]) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (void)enumeratePageHostsUsingBlock:(id)a3
{
  if (a3)
  {
    pageInfoToPageHost = self->_pageInfoToPageHost;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_7228C;
    v4[3] = &unk_45C1F8;
    v4[4] = a3;
    [(TSURetainedPointerKeyDictionary *)pageInfoToPageHost enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)syncPerformBlock:(id)a3
{
  if (a3)
  {
    dispatch_sync(self->_pageHostMutex, a3);
  }
}

- (id)layerAndSubviewHostForPageInfo:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_7143C;
  v11 = sub_7144C;
  v12 = 0;
  if (a3)
  {
    pageHostMutex = self->_pageHostMutex;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_72394;
    block[3] = &unk_45C220;
    block[5] = a3;
    block[6] = &v7;
    block[4] = self;
    dispatch_sync(pageHostMutex, block);
    v4 = v8[5];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)pageLayerAndSubviewHostRecycle:(id)a3
{
  pageHostMutex = self->_pageHostMutex;
  if (pageHostMutex || ([+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")], (pageHostMutex = self->_pageHostMutex) != 0))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_725A4;
    block[3] = &unk_45AE58;
    block[4] = self;
    block[5] = a3;
    dispatch_sync(pageHostMutex, block);
  }
}

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end