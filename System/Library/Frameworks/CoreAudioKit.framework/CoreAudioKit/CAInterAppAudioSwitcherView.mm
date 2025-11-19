@interface CAInterAppAudioSwitcherView
- (BOOL)isHostConnected;
- (CAInterAppAudioSwitcherView)initWithCoder:(id)a3;
- (CAInterAppAudioSwitcherView)initWithFrame:(CGRect)a3;
- (void)appHasGoneForeground;
- (void)audioUnitPropertyChangedListener:(void *)a3 unit:(OpaqueAudioComponentInstance *)a4 propID:(unsigned int)a5 scope:(unsigned int)a6 element:(unsigned int)a7;
- (void)changePage:(id)a3;
- (void)didMoveToSuperview;
- (void)initialize;
- (void)layoutSubviews;
- (void)nodePressed:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeFromSuperview;
- (void)scrollViewDidEndDecelerating:(id)a3;
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
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_appHasGoneInBackground name:*MEMORY[0x277D76660] object:0];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277D76758];

  [v8 addObserver:self selector:sel_appHasGoneForeground name:v9 object:0];
}

- (CAInterAppAudioSwitcherView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAInterAppAudioSwitcherView;
  v3 = [(CAInterAppAudioSwitcherView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAInterAppAudioSwitcherView *)v3 initialize];
  }

  return v4;
}

- (CAInterAppAudioSwitcherView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CAInterAppAudioSwitcherView;
  v3 = [(CAInterAppAudioSwitcherView *)&v6 initWithCoder:a3];
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
    v5 = [(CAIAANodeContainer *)self->nodeView subviews];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
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
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(CAIAANodeContainer *)self->nodeView numPages];
  pageControl = self->pageControl;
  if (v3 < 2)
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

- (void)changePage:(id)a3
{
  if (self->nodeView)
  {
    v4 = [(UIPageControl *)self->pageControl currentPage];
    [(CAIAANodeContainer *)self->nodeView frame];
    nodeView = self->nodeView;

    [(CAIAANodeContainer *)nodeView setContentOffset:1 animated:v5 * v4, 0.0];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"numPages", a4, a5, a6}])
  {
    nodeView = self->nodeView;
    if (nodeView == a4)
    {
      v9 = [(CAIAANodeContainer *)nodeView numPages];
      pageControl = self->pageControl;

      [(UIPageControl *)pageControl setNumberOfPages:v9];
    }
  }
}

- (void)nodePressed:(id)a3
{
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [a3 url];

  [v4 openURL:v5];
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

- (void)audioUnitPropertyChangedListener:(void *)a3 unit:(OpaqueAudioComponentInstance *)a4 propID:(unsigned int)a5 scope:(unsigned int)a6 element:(unsigned int)a7
{
  if (a5 == 101)
  {
    [(CAInterAppAudioSwitcherView *)self updateInfo:a3];
  }
}

- (void)updateInfo
{
  v3 = [(CAInterAppAudioSwitcherView *)self isHostConnected];
  self->isHostConnected = v3;
  info = self->info;
  if (v3)
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

- (void)scrollViewDidEndDecelerating:(id)a3
{
  if (self->pageControl)
  {
    [a3 contentOffset];
    v6 = v5;
    [a3 contentSize];
    *&v7 = v6 / v7;
    v8 = llroundf(*&v7);
    pageControl = self->pageControl;

    [(UIPageControl *)pageControl setCurrentPage:v8];
  }
}

@end