@interface IMViewState
+ (id)saveStateForView:(id)view flags:(unint64_t)flags;
- (IMViewState)initWithView:(id)view flags:(unint64_t)flags;
- (void)dealloc;
- (void)restore;
@end

@implementation IMViewState

+ (id)saveStateForView:(id)view flags:(unint64_t)flags
{
  viewCopy = view;
  v7 = [[self alloc] initWithView:viewCopy flags:flags];

  return v7;
}

- (IMViewState)initWithView:(id)view flags:(unint64_t)flags
{
  viewCopy = view;
  v24.receiver = self;
  v24.super_class = IMViewState;
  v8 = [(IMViewState *)&v24 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v8->_view, view);
  v9->_flags = flags;
  if (flags)
  {
    v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    placeholderView = v9->_placeholderView;
    v9->_placeholderView = v11;

    superview = [viewCopy superview];
    [superview insertSubview:v9->_placeholderView belowSubview:v9->_view];

    flags = v9->_flags;
    if ((flags & 4) == 0)
    {
LABEL_4:
      if ((flags & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((flags & 4) == 0)
  {
    goto LABEL_4;
  }

  view = v9->_view;
  if (view)
  {
    [(UIView *)view transform];
    flags = v9->_flags;
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
  }

  *&v9->_transform.a = v21;
  *&v9->_transform.c = v22;
  *&v9->_transform.tx = v23;
  if ((flags & 0x10) == 0)
  {
LABEL_5:
    if ((flags & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(UIView *)v9->_view frame:v21];
  v9->_frame.origin.x = v15;
  v9->_frame.origin.y = v16;
  v9->_frame.size.width = v17;
  v9->_frame.size.height = v18;
  flags = v9->_flags;
  if ((flags & 2) == 0)
  {
LABEL_6:
    if ((flags & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    v9->_autoresizingMask = [(UIView *)v9->_view autoresizingMask:v21];
    if ((v9->_flags & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_16:
  v19 = [(UIView *)v9->_view layer:v21];
  [v19 zPosition];
  v9->_zPosition = v20;

  flags = v9->_flags;
  if ((flags & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((flags & 0x20) != 0)
  {
LABEL_8:
    v9->_hidden = [(UIView *)v9->_view isHidden:v21];
  }

LABEL_9:

  return v9;
}

- (void)restore
{
  view = self->_view;
  if (view)
  {
    flags = self->_flags;
    if (flags)
    {
      superview = [(UIView *)self->_placeholderView superview];
      [superview insertSubview:self->_view belowSubview:self->_placeholderView];

      [(UIView *)self->_placeholderView removeFromSuperview];
      placeholderView = self->_placeholderView;
      self->_placeholderView = 0;

      view = self->_view;
      flags = self->_flags;
      if ((flags & 4) == 0)
      {
LABEL_4:
        if ((flags & 0x10) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else if ((flags & 4) == 0)
    {
      goto LABEL_4;
    }

    v7 = *&self->_transform.c;
    v10[0] = *&self->_transform.a;
    v10[1] = v7;
    v10[2] = *&self->_transform.tx;
    [(UIView *)view setTransform:v10];
    view = self->_view;
    flags = self->_flags;
    if ((flags & 0x10) == 0)
    {
LABEL_5:
      if ((flags & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

LABEL_13:
    [(UIView *)view setFrame:self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height];
    view = self->_view;
    flags = self->_flags;
    if ((flags & 2) == 0)
    {
LABEL_6:
      if ((flags & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    zPosition = self->_zPosition;
    layer = [(UIView *)view layer];
    [layer setZPosition:zPosition];

    view = self->_view;
    flags = self->_flags;
    if ((flags & 8) == 0)
    {
LABEL_7:
      if ((flags & 0x20) == 0)
      {
LABEL_9:
        self->_view = 0;

        return;
      }

LABEL_8:
      [(UIView *)view setHidden:self->_hidden];
      view = self->_view;
      goto LABEL_9;
    }

LABEL_15:
    [(UIView *)view setAutoresizingMask:self->_autoresizingMask];
    view = self->_view;
    if ((self->_flags & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }
}

- (void)dealloc
{
  [(UIView *)self->_placeholderView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = IMViewState;
  [(IMViewState *)&v3 dealloc];
}

@end