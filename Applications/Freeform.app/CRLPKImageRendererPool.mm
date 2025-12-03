@interface CRLPKImageRendererPool
+ (CRLPKImageRendererPool)sharedPool;
- (CRLPKImageRendererPool)init;
- (void)asyncFlushAllUnlockedRenderers;
- (void)p_flushUnlockedRenderersLeavingMaxCount:(unint64_t)count;
- (void)provideImageRendererOfMinimumSize:(CGSize)size sixChannelBlending:(BOOL)blending transparentBlending:(BOOL)transparentBlending inBlock:(id)block;
@end

@implementation CRLPKImageRendererPool

- (CRLPKImageRendererPool)init
{
  v11.receiver = self;
  v11.super_class = CRLPKImageRendererPool;
  v2 = [(CRLPKImageRendererPool *)&v11 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    rendererContainers = v2->_rendererContainers;
    v2->_rendererContainers = v3;

    v5 = dispatch_queue_create("com.apple.freeform.CRLPKImageRendererPool", 0);
    containerAccessQueue = v2->_containerAccessQueue;
    v2->_containerAccessQueue = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[UIApplication sharedApplication];
    [v7 addObserver:v2 selector:"p_didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:v8];

    v9 = +[UIApplication sharedApplication];
    [v7 addObserver:v2 selector:"p_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:v9];
  }

  return v2;
}

+ (CRLPKImageRendererPool)sharedPool
{
  if (qword_101A351A0 != -1)
  {
    sub_10137F6BC();
  }

  v3 = qword_101A35198;

  return v3;
}

- (void)asyncFlushAllUnlockedRenderers
{
  containerAccessQueue = self->_containerAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A0F38;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_async(containerAccessQueue, block);
}

- (void)provideImageRendererOfMinimumSize:(CGSize)size sixChannelBlending:(BOOL)blending transparentBlending:(BOOL)transparentBlending inBlock:(id)block
{
  height = size.height;
  width = size.width;
  blockCopy = block;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1004A1244;
  v26 = sub_1004A1254;
  v27 = 0;
  if (!sub_100120888(width, height))
  {
    v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137F6D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10137F6F8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137F780();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = +[CRLAssertionHandler packedBacktraceString];
      sub_101318C3C(v14, buf, v12, v13);
    }

    v15 = [NSString stringWithUTF8String:"[CRLPKImageRendererPool provideImageRendererOfMinimumSize:sixChannelBlending:transparentBlending:inBlock:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPencilKitRenderer.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:211 isFatal:0 description:"Can't provide an image renderer for a non-finite size"];
  }

  containerAccessQueue = self->_containerAccessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004A12E4;
  block[3] = &unk_101867370;
  *&block[6] = width;
  *&block[7] = height;
  blendingCopy = blending;
  transparentBlendingCopy = transparentBlending;
  block[4] = self;
  block[5] = &v22;
  dispatch_sync(containerAccessQueue, block);
  imageRenderer = [v23[5] imageRenderer];
  blockCopy[2](blockCopy, imageRenderer);

  [v23[5] unlockRenderer];
  _Block_object_dispose(&v22, 8);
}

- (void)p_flushUnlockedRenderersLeavingMaxCount:(unint64_t)count
{
  v5 = [(NSMutableArray *)self->_rendererContainers count];
  if (v5 > count)
  {
    v6 = v5;
    v15 = +[NSMutableIndexSet indexSet];
    v7 = 0;
    do
    {
      v8 = [(NSMutableArray *)self->_rendererContainers objectAtIndexedSubscript:v7];
      if ([v8 tryLockingRenderer])
      {
        [v15 addIndex:v7];
      }

      ++v7;
    }

    while (v6 != v7);
    v9 = [v15 count];
    v10 = +[NSMutableIndexSet indexSet];
    firstIndex = [v15 firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = firstIndex;
      v13 = v9 - count;
      do
      {
        if ([v10 count] >= v13)
        {
          v14 = [(NSMutableArray *)self->_rendererContainers objectAtIndexedSubscript:v12];
          [v14 unlockRenderer];
        }

        else
        {
          [v10 addIndex:v12];
        }

        v12 = [v15 indexGreaterThanIndex:v12];
      }

      while (v12 != 0x7FFFFFFFFFFFFFFFLL);
    }

    [(NSMutableArray *)self->_rendererContainers removeObjectsAtIndexes:v10];
  }
}

@end