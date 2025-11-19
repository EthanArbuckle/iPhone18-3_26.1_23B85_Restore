@interface AVRoutingSession
- (AVRoutingSession)initWithFigRoutingSession:(OpaqueFigRoutingSession *)a3;
- (AVRoutingSessionDestination)destination;
- (BOOL)establishedAutomaticallyFromLikelyDestination;
- (id)description;
- (void)dealloc;
@end

@implementation AVRoutingSession

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    figRoutingSession = ivars->figRoutingSession;
    if (figRoutingSession)
    {
      CFRelease(figRoutingSession);
      ivars = self->_ivars;
    }
  }

  v5.receiver = self;
  v5.super_class = AVRoutingSession;
  [(AVRoutingSession *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(AVRoutingSession *)self establishedAutomaticallyFromLikelyDestination])
  {
    v6 = "Y";
  }

  else
  {
    v6 = "N";
  }

  return [v3 stringWithFormat:@"<%@: %p, establishedAutomaticallyFromLikelyDestination=%s, destination=%@>", v5, self, v6, -[AVRoutingSession destination](self, "destination")];
}

- (BOOL)establishedAutomaticallyFromLikelyDestination
{
  cf = 0;
  figRoutingSession = self->_ivars->figRoutingSession;
  CMBaseObject = FigRoutingSessionGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v5 = *(*(VTable + 8) + 48);
  if (v5)
  {
    v6 = *(VTable + 8) + 48;
    v7 = v5(CMBaseObject, *MEMORY[0x1E69AF588], *MEMORY[0x1E695E480], &cf) == 0;
    v8 = cf;
    v9 = *MEMORY[0x1E695E4D0];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = *MEMORY[0x1E695E4D0];
  }

  return v8 == v9 && v7;
}

- (AVRoutingSession)initWithFigRoutingSession:(OpaqueFigRoutingSession *)a3
{
  v9.receiver = self;
  v9.super_class = AVRoutingSession;
  v4 = [(AVRoutingSession *)&v9 init];
  if (v4 && (ivars = objc_alloc_init(AVRoutingSessionInternal), (v4->_ivars = ivars) != 0) && (!a3 ? (v6 = 0) : (v6 = CFRetain(a3), ivars = v4->_ivars), ivars->figRoutingSession = v6, v4->_ivars->figRoutingSession))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVRoutingSessionDestination)destination
{
  cf = 0;
  figRoutingSession = self->_ivars->figRoutingSession;
  VTable = CMBaseObjectGetVTable();
  v4 = *(*(VTable + 16) + 8);
  if (!v4 || (v5 = *(VTable + 16) + 8, v4(figRoutingSession, &cf)))
  {
    v7 = 0;
  }

  else
  {
    v6 = [AVRoutingSessionDestination alloc];
    v7 = [(AVRoutingSessionDestination *)v6 initWithFigRoutingSessionDestination:cf];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

@end