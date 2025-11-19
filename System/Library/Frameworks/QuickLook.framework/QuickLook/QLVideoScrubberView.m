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
    v19 = [(QLVideoScrubberView *)self leftAnchor];
    v18 = [(QLPHVideoScrubberView *)self->_photosScrubber leftAnchor];
    v17 = [v19 constraintEqualToAnchor:v18];
    v20[0] = v17;
    v16 = [(QLVideoScrubberView *)self rightAnchor];
    v6 = [(QLPHVideoScrubberView *)self->_photosScrubber rightAnchor];
    v7 = [v16 constraintEqualToAnchor:v6];
    v20[1] = v7;
    v8 = [(QLVideoScrubberView *)self topAnchor];
    v9 = [(QLPHVideoScrubberView *)self->_photosScrubber topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:-2.0];
    v20[2] = v10;
    v11 = [(QLVideoScrubberView *)self bottomAnchor];
    v12 = [(QLPHVideoScrubberView *)self->_photosScrubber bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:2.0];
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
    v4 = [(QLVideoScrubberView *)self scrollView];
    if ([v4 isDragging])
    {
      [(QLVideoScrubberView *)self setUserInteractingWithScrubber:1];
    }

    else
    {
      v3 = [(QLVideoScrubberView *)self scrollView];
      -[QLVideoScrubberView setUserInteractingWithScrubber:](self, "setUserInteractingWithScrubber:", [v3 isDecelerating]);
    }
  }
}

@end