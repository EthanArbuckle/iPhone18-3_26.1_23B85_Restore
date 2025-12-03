@interface QLVideoScrubberView
- (QLPHVideoScrubberView)photosScrubber;
- (void)_updateUserInteractingWithScrubberIfNeeded;
- (void)layoutSubviews;
@end

@implementation QLVideoScrubberView

- (void)layoutSubviews
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (!self->_photosScrubber)
  {
    v3 = [QLPHVideoScrubberView alloc];
    [(QLVideoScrubberView *)self bounds];
    v4 = [(QLPHVideoScrubberView *)v3 initWithFrame:?];
    photosScrubber = self->_photosScrubber;
    self->_photosScrubber = v4;

    [(QLPHVideoScrubberView *)self->_photosScrubber setInteractionDelegate:self];
    [(QLVideoScrubberView *)self addSubview:self->_photosScrubber];
    [(QLPHVideoScrubberView *)self->_photosScrubber setTranslatesAutoresizingMaskIntoConstraints:0];
    leftAnchor = [(QLVideoScrubberView *)self leftAnchor];
    leftAnchor2 = [(QLPHVideoScrubberView *)self->_photosScrubber leftAnchor];
    v17 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v20[0] = v17;
    rightAnchor = [(QLVideoScrubberView *)self rightAnchor];
    rightAnchor2 = [(QLPHVideoScrubberView *)self->_photosScrubber rightAnchor];
    v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v20[1] = v7;
    topAnchor = [(QLVideoScrubberView *)self topAnchor];
    topAnchor2 = [(QLPHVideoScrubberView *)self->_photosScrubber topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-2.0];
    v20[2] = v10;
    bottomAnchor = [(QLVideoScrubberView *)self bottomAnchor];
    bottomAnchor2 = [(QLPHVideoScrubberView *)self->_photosScrubber bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:2.0];
    v20[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    [(QLVideoScrubberView *)self addConstraints:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (QLPHVideoScrubberView)photosScrubber
{
  photosScrubber = self->_photosScrubber;
  if (!photosScrubber)
  {
    [(QLVideoScrubberView *)self layoutSubviews];
    photosScrubber = self->_photosScrubber;
  }

  return photosScrubber;
}

- (void)_updateUserInteractingWithScrubberIfNeeded
{
  if (self->_touchGestureIsActive)
  {

    [(QLVideoScrubberView *)self setUserInteractingWithScrubber:1];
  }

  else
  {
    scrollView = [(QLVideoScrubberView *)self scrollView];
    if ([scrollView isDragging])
    {
      [(QLVideoScrubberView *)self setUserInteractingWithScrubber:1];
    }

    else
    {
      scrollView2 = [(QLVideoScrubberView *)self scrollView];
      -[QLVideoScrubberView setUserInteractingWithScrubber:](self, "setUserInteractingWithScrubber:", [scrollView2 isDecelerating]);
    }
  }
}

@end