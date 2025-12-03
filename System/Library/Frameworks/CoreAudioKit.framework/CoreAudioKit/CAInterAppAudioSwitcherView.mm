@interface CAInterAppAudioSwitcherView
- (BOOL)isHostConnected;
- (CAInterAppAudioSwitcherView)initWithCoder:(id)coder;
- (CAInterAppAudioSwitcherView)initWithFrame:(CGRect)frame;
- (void)appHasGoneForeground;
- (void)audioUnitPropertyChangedListener:(void *)listener unit:(OpaqueAudioComponentInstance *)unit propID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element;
- (void)changePage:(id)page;
- (void)didMoveToSuperview;
- (void)initialize;
- (void)layoutSubviews;
- (void)nodePressed:(id)pressed;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeFromSuperview;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)setOutputAudioUnit:(AudioUnit)au;
- (void)setShowingAppNames:(BOOL)showingAppNames;
- (void)startTimer;
- (void)updateInfo;
- (void)updateNodeList;
@end

@implementation CAInterAppAudioSwitcherView

- (void)initialize
{
  v3 = [CAIAANodeContainer alloc];
  [(CAInterAppAudioSwitcherView *)self frame];
  v5 = v4;
  [(CAInterAppAudioSwitcherView *)self frame];
  v6 = [(CAIAANodeContainer *)v3 initWithFrame:0.0, 0.0, v5];
  self->nodeView = v6;
  [(CAIAANodeContainer *)v6 setAutoresizingMask:18];
  -[CAInterAppAudioSwitcherView setBackgroundColor:](self, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  [(CAInterAppAudioSwitcherView *)self addSubview:self->nodeView];
  [(CAIAANodeContainer *)self->nodeView addObserver:self forKeyPath:@"numPages" options:1 context:0];
  [(CAIAANodeContainer *)self->nodeView setDelegate:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_appHasGoneInBackground name:*MEMORY[0x277D76660] object:0];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277D76758];

  [defaultCenter2 addObserver:self selector:sel_appHasGoneForeground name:v9 object:0];
}

- (CAInterAppAudioSwitcherView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAInterAppAudioSwitcherView;
  v3 = [(CAInterAppAudioSwitcherView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAInterAppAudioSwitcherView *)v3 initialize];
  }

  return v4;
}

- (CAInterAppAudioSwitcherView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CAInterAppAudioSwitcherView;
  v3 = [(CAInterAppAudioSwitcherView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAInterAppAudioSwitcherView *)v3 initialize];
  }

  return v4;
}

- (void)removeFromSuperview
{
  [(NSTimer *)self->refreshTimer invalidate];
  self->refreshTimer = 0;
  [(CAIAANodeContainer *)self->nodeView removeObserver:self forKeyPath:@"numPages"];
  [(CAIAANodeContainer *)self->nodeView setDelegate:0];
  [(CAIAANodeContainer *)self->nodeView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = CAInterAppAudioSwitcherView;
  [(CAInterAppAudioSwitcherView *)&v3 removeFromSuperview];
}

- (void)startTimer
{
  refreshTimer = self->refreshTimer;
  if (!refreshTimer)
  {
    refreshTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_updateInfo selector:0 userInfo:1 repeats:2.0];
    self->refreshTimer = refreshTimer;
  }

  [(NSTimer *)refreshTimer setTolerance:0.5];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = CAInterAppAudioSwitcherView;
  [(CAInterAppAudioSwitcherView *)&v3 didMoveToSuperview];
  [(CAInterAppAudioSwitcherView *)self startTimer];
}

- (void)setOutputAudioUnit:(AudioUnit)au
{
  outputUnit = self->outputUnit;
  if (outputUnit != au)
  {
    if (outputUnit)
    {
      v6 = AudioUnitRemovePropertyListenerWithUserData(outputUnit, 0x65u, AudioUnitIAASwitcherPropertyChangeDispatcher, self);
      if (v6)
      {
        NSLog(&cfstr_ErrorRemovingP.isa, v6);
      }
    }

    self->outputUnit = au;
    if (au)
    {
      v7 = AudioUnitAddPropertyListener(au, 0x65u, AudioUnitIAASwitcherPropertyChangeDispatcher, self);
      if (v7)
      {
        NSLog(&cfstr_ErrorAddingPro.isa, v7);
        return;
      }
    }

    else
    {
      self->isHostConnected = 1;
    }

    [(CAInterAppAudioSwitcherView *)self updateInfo];
  }
}

- (void)setShowingAppNames:(BOOL)showingAppNames
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->showingAppNames != showingAppNames)
  {
    v3 = showingAppNames;
    self->showingAppNames = showingAppNames;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    subviews = [(CAIAANodeContainer *)self->nodeView subviews];
    v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(subviews);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setHasLabel:v3];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(CAIAANodeContainer *)self->nodeView setNeedsLayout];
  }
}

- (void)updateNodeList
{
  [-[CAIAANodeContainer subviews](self->nodeView "subviews")];
  if ([(CAIAANodeInfo *)self->info numNodes])
  {
    [-[CAIAANodeInfo nodeAtIndex:](self->info nodeAtIndex:{0), "frame"}];
    v4 = v3;
    [(CAIAANodeContainer *)self->nodeView frame];
    v6 = v5;
    if ([(CAIAANodeInfo *)self->info numNodes])
    {
      v7 = 0;
      v8 = (v6 - v4) * 0.5;
      v9 = floorf(v8);
      do
      {
        v10 = [(CAIAANodeInfo *)self->info nodeAtIndex:v7];
        [v10 frame];
        v12 = v11;
        [v10 frame];
        v14 = v13 + v9;
        [v10 frame];
        v16 = v15;
        [v10 frame];
        [v10 setFrame:{v12, v14, v16}];
        [v10 addTarget:self action:sel_nodePressed_ forControlEvents:64];
        [v10 setHasLabel:self->showingAppNames];
        [(CAIAANodeContainer *)self->nodeView addSubview:v10];
        ++v7;
      }

      while (v7 < [(CAIAANodeInfo *)self->info numNodes]);
    }
  }

  [(CAInterAppAudioSwitcherView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CAInterAppAudioSwitcherView;
  [(CAInterAppAudioSwitcherView *)&v14 layoutSubviews];
  [(CAIAANodeContainer *)self->nodeView layoutSubviews];
  numPages = [(CAIAANodeContainer *)self->nodeView numPages];
  pageControl = self->pageControl;
  if (numPages < 2)
  {
    if (pageControl)
    {
      [(UIPageControl *)pageControl removeFromSuperview];
      self->pageControl = 0;
      [(CAInterAppAudioSwitcherView *)self frame];
      [(CAIAANodeContainer *)self->nodeView setFrame:?];
    }
  }

  else if (!pageControl)
  {
    v5 = objc_alloc_init(MEMORY[0x277D757E0]);
    self->pageControl = v5;
    [(UIPageControl *)v5 sizeForNumberOfPages:[(CAIAANodeContainer *)self->nodeView numPages]];
    v7 = v6;
    v9 = v8;
    [(CAInterAppAudioSwitcherView *)self frame];
    v11 = (v10 - v7) * 0.5;
    v12 = floorf(v11);
    [(CAInterAppAudioSwitcherView *)self frame];
    [(UIPageControl *)self->pageControl setFrame:v12, v13 - v9, v7, v9];
    [(UIPageControl *)self->pageControl setNumberOfPages:[(CAIAANodeContainer *)self->nodeView numPages]];
    [(UIPageControl *)self->pageControl setCurrentPage:0];
    [(UIPageControl *)self->pageControl addTarget:self action:sel_changePage_ forControlEvents:4096];
  }
}

- (void)changePage:(id)page
{
  if (self->nodeView)
  {
    currentPage = [(UIPageControl *)self->pageControl currentPage];
    [(CAIAANodeContainer *)self->nodeView frame];
    nodeView = self->nodeView;

    [(CAIAANodeContainer *)nodeView setContentOffset:1 animated:v5 * currentPage, 0.0];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"numPages", object, change, context}])
  {
    nodeView = self->nodeView;
    if (nodeView == object)
    {
      numPages = [(CAIAANodeContainer *)nodeView numPages];
      pageControl = self->pageControl;

      [(UIPageControl *)pageControl setNumberOfPages:numPages];
    }
  }
}

- (void)nodePressed:(id)pressed
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v5 = [pressed url];

  [mEMORY[0x277D75128] openURL:v5];
}

- (void)appHasGoneForeground
{
  [(CAInterAppAudioSwitcherView *)self updateNodeList];

  [(CAInterAppAudioSwitcherView *)self startTimer];
}

- (BOOL)isHostConnected
{
  outputUnit = self->outputUnit;
  if (outputUnit)
  {
    ioDataSize = 4;
    outData = 0;
    if (!AudioUnitGetProperty(outputUnit, 0x65u, 0, 0, &outData, &ioDataSize))
    {
      v4 = outData != 0;
      if (self->isHostConnected != v4)
      {
        self->isHostConnected = v4;
      }
    }
  }

  return self->isHostConnected;
}

- (void)audioUnitPropertyChangedListener:(void *)listener unit:(OpaqueAudioComponentInstance *)unit propID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element
{
  if (d == 101)
  {
    [(CAInterAppAudioSwitcherView *)self updateInfo:listener];
  }
}

- (void)updateInfo
{
  isHostConnected = [(CAInterAppAudioSwitcherView *)self isHostConnected];
  self->isHostConnected = isHostConnected;
  info = self->info;
  if (isHostConnected)
  {
    if (info)
    {
      [(CAIAANodeInfo *)info refresh];
    }

    else
    {
      self->info = objc_alloc_init(CAIAANodeInfo);
      -[CAIAANodeInfo setLabelColor:](self->info, "setLabelColor:", [MEMORY[0x277D75348] lightGrayColor]);
    }
  }

  else if (info)
  {

    self->info = 0;
  }

  [(CAInterAppAudioSwitcherView *)self updateNodeList];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  if (self->pageControl)
  {
    [decelerating contentOffset];
    v6 = v5;
    [decelerating contentSize];
    *&v7 = v6 / v7;
    v8 = llroundf(*&v7);
    pageControl = self->pageControl;

    [(UIPageControl *)pageControl setCurrentPage:v8];
  }
}

@end