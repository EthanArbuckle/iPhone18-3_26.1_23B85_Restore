@interface GLKView
- (BOOL)_presentFramebuffer;
- (CGRect)viewBounds;
- (GLKView)initWithCoder:(id)a3;
- (GLKView)initWithFrame:(CGRect)a3;
- (GLKView)initWithFrame:(CGRect)frame context:(EAGLContext *)context;
- (UIImage)snapshot;
- (void)_createFramebuffer;
- (void)_deleteFramebuffer;
- (void)_display:(BOOL)a3;
- (void)_initCommon;
- (void)_resolveAndDiscard;
- (void)_setFramebuffer:(BOOL *)a3;
- (void)dealloc;
- (void)displayLayer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)setContentScaleFactor:(double)a3;
- (void)setContext:(EAGLContext *)context;
- (void)setDrawableColorFormat:(GLKViewDrawableColorFormat)drawableColorFormat;
- (void)setDrawableDepthFormat:(GLKViewDrawableDepthFormat)drawableDepthFormat;
- (void)setDrawableMultisample:(GLKViewDrawableMultisample)drawableMultisample;
- (void)setDrawableStencilFormat:(GLKViewDrawableStencilFormat)drawableStencilFormat;
@end

@implementation GLKView

- (void)_initCommon
{
  v3 = [(GLKView *)self layer];
  self->_enableSetNeedsDisplay = 1;
  self->_drawableColorFormat = 0;
  self->_drawableDepthFormat = 0;
  self->_drawableStencilFormat = 0;
  self->_drawableMultisample = 0;
  v4 = MEMORY[0x277CBEB38];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v6 = *MEMORY[0x277CD93C0];
  -[GLKView setDrawableProperties:](self, "setDrawableProperties:", [v4 dictionaryWithObjectsAndKeys:{v5, *MEMORY[0x277CD93C0], *MEMORY[0x277CD93A0], *MEMORY[0x277CD93B8], 0}]);
  [v3 setDrawableProperties:self->_drawableProperties];
  [v3 setOpaque:1];
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  [(GLKView *)self setContentScaleFactor:?];
  if (!_drawRectUIViewIMP)
  {
    _drawRectUIViewIMP = [MEMORY[0x277D75D18] instanceMethodForSelector:sel_drawRect_];
  }

  if (objc_opt_respondsToSelector())
  {
    self->_drawRectIMP = [(GLKView *)self methodForSelector:sel_drawRect_];
  }
}

- (GLKView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GLKView;
  v3 = [(GLKView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GLKView *)v3 _initCommon];
  }

  return v4;
}

- (GLKView)initWithFrame:(CGRect)frame context:(EAGLContext *)context
{
  v8.receiver = self;
  v8.super_class = GLKView;
  v5 = [(GLKView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    [(GLKView *)v5 _initCommon];
    [(GLKView *)v6 setContext:context];
  }

  return v6;
}

- (GLKView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = GLKView;
  v4 = [(GLKView *)&v7 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    [(GLKView *)v4 _initCommon];
    if ([a3 containsValueForKey:@"GLKViewDrawableColorFormatCoderKey"])
    {
      v5->_drawableColorFormat = [a3 decodeIntForKey:@"GLKViewDrawableColorFormatCoderKey"];
    }

    if ([a3 containsValueForKey:@"GLKViewDrawableDepthFormatCoderKey"])
    {
      v5->_drawableDepthFormat = [a3 decodeIntForKey:@"GLKViewDrawableDepthFormatCoderKey"];
    }

    if ([a3 containsValueForKey:@"GLKViewDrawableStencilFormatCoderKey"])
    {
      v5->_drawableStencilFormat = [a3 decodeIntForKey:@"GLKViewDrawableStencilFormatCoderKey"];
    }

    if ([a3 containsValueForKey:@"GLKViewDrawableMultisampleCoderKey"])
    {
      v5->_drawableMultisample = [a3 decodeIntForKey:@"GLKViewDrawableMultisampleCoderKey"];
    }

    if ([a3 containsValueForKey:@"GLKViewEnableSetNeedsDisplayCoderKey"])
    {
      v5->_enableSetNeedsDisplay = [a3 decodeBoolForKey:@"GLKViewEnableSetNeedsDisplayCoderKey"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GLKView;
  [(GLKView *)&v5 encodeWithCoder:?];
  [a3 encodeInteger:self->_drawableColorFormat forKey:@"GLKViewDrawableColorFormatCoderKey"];
  [a3 encodeInteger:self->_drawableDepthFormat forKey:@"GLKViewDrawableDepthFormatCoderKey"];
  [a3 encodeInteger:self->_drawableStencilFormat forKey:@"GLKViewDrawableStencilFormatCoderKey"];
  [a3 encodeInteger:self->_drawableMultisample forKey:@"GLKViewDrawableMultisampleCoderKey"];
  [a3 encodeBool:self->_enableSetNeedsDisplay forKey:@"GLKViewEnableSetNeedsDisplayCoderKey"];
}

- (void)dealloc
{
  if (glkLinkedOSVersion() < 0x90000)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CD9388] currentContext];
  }

  [(GLKView *)self _deleteFramebuffer];

  if (glkLinkedOSVersion() > 0x8FFFF)
  {
    [MEMORY[0x277CD9388] setCurrentContext:v3];
  }

  [(GLKView *)self setDrawableProperties:0];
  v4.receiver = self;
  v4.super_class = GLKView;
  [(GLKView *)&v4 dealloc];
}

- (void)_createFramebuffer
{
  if (self->_context)
  {
    glPushGroupMarkerEXT(0, "Create Framebuffer");
    v3 = [(GLKView *)self layer];
    glGenFramebuffers(1, &self->_resolveFramebuffer);
    glBindFramebuffer(0x8D40u, self->_resolveFramebuffer);
    v4 = self->_drawableColorFormat - 1;
    if (v4 > 0xC)
    {
      v5 = MEMORY[0x277CD93A0];
    }

    else
    {
      v5 = qword_278A58168[v4];
    }

    [(NSMutableDictionary *)self->_drawableProperties setObject:*v5 forKey:*MEMORY[0x277CD93B8]];
    [v3 setDrawableProperties:self->_drawableProperties];
    glGenRenderbuffers(1, &self->_resolveColorRenderbuffer);
    glBindRenderbuffer(0x8D41u, self->_resolveColorRenderbuffer);
    if (![(EAGLContext *)self->_context renderbufferStorage:36161 fromDrawable:v3])
    {
      NSLog(&cfstr_FailedToBindEa.isa, v3, self->_resolveColorRenderbuffer);
    }

    *params = 0;
    glGetRenderbufferParameteriv(0x8D41u, 0x8D42u, &params[1]);
    glGetRenderbufferParameteriv(0x8D41u, 0x8D43u, params);
    v6 = params[0];
    self->_drawableWidth = params[1];
    self->_drawableHeight = v6;
    glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, self->_resolveColorRenderbuffer);
    if (self->_drawableDepthFormat == 1)
    {
      v7 = 33189;
    }

    else
    {
      v7 = 33190;
    }

    if (self->_drawableMultisample)
    {
      self->_drawableColorFormat;
      glGenFramebuffers(1, &self->_multisampleFramebuffer);
      glBindFramebuffer(0x8D40u, self->_multisampleFramebuffer);
      glGenRenderbuffers(1, &self->_multisampleColorRenderbuffer);
      glBindRenderbuffer(0x8D41u, self->_multisampleColorRenderbuffer);
      drawableWidth_low = LODWORD(self->_drawableWidth);
      drawableHeight_low = LODWORD(self->_drawableHeight);
      glRenderbufferStorageMultisampleAPPLE();
      glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, self->_multisampleColorRenderbuffer);
      drawableStencilFormat = self->_drawableStencilFormat;
      if (self->_drawableDepthFormat)
      {
        if (!drawableStencilFormat)
        {
          p_depthRenderbuffer = &self->_depthRenderbuffer;
          glGenRenderbuffers(1, &self->_depthRenderbuffer);
          glBindRenderbuffer(0x8D41u, self->_depthRenderbuffer);
          v19 = LODWORD(self->_drawableWidth);
          v20 = LODWORD(self->_drawableHeight);
          glRenderbufferStorageMultisampleAPPLE();
          v18 = 36096;
          goto LABEL_21;
        }

        p_depthRenderbuffer = &self->_depthStencilRenderbuffer;
        glGenRenderbuffers(1, &self->_depthStencilRenderbuffer);
        glBindRenderbuffer(0x8D41u, self->_depthStencilRenderbuffer);
        v12 = LODWORD(self->_drawableWidth);
        v13 = LODWORD(self->_drawableHeight);
        glRenderbufferStorageMultisampleAPPLE();
        glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, self->_depthStencilRenderbuffer);
      }

      else
      {
        if (!drawableStencilFormat)
        {
          goto LABEL_22;
        }

        p_depthRenderbuffer = &self->_stencilRenderbuffer;
        glGenRenderbuffers(1, &self->_stencilRenderbuffer);
        glBindRenderbuffer(0x8D41u, self->_stencilRenderbuffer);
        v16 = LODWORD(self->_drawableWidth);
        v17 = LODWORD(self->_drawableHeight);
        glRenderbufferStorageMultisampleAPPLE();
      }

      v18 = 36128;
LABEL_21:
      glFramebufferRenderbuffer(0x8D40u, v18, 0x8D41u, *p_depthRenderbuffer);
LABEL_22:
      if (glCheckFramebufferStatus(0x8D40u) != 36053)
      {
        v21 = glCheckFramebufferStatus(0x8D40u);
        NSLog(&cfstr_FailedToMakeCo.isa, v21);
        v22 = 1;
        goto LABEL_30;
      }

LABEL_29:
      v22 = 0;
LABEL_30:
      glBindFramebuffer(0x8D40u, self->_resolveFramebuffer);
      if (glCheckFramebufferStatus(0x8D40u) == 36053)
      {
        if (!v22)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v25 = glCheckFramebufferStatus(0x8D40u);
        NSLog(&cfstr_FailedToMakeCo_0.isa, v25);
      }

      [(GLKView *)self _deleteFramebuffer];
LABEL_35:
      glPopGroupMarkerEXT();
      return;
    }

    self->_multisampleFramebuffer = 0;
    self->_multisampleColorRenderbuffer = 0;
    v14 = self->_drawableStencilFormat;
    if (self->_drawableDepthFormat)
    {
      if (!v14)
      {
        glGenRenderbuffers(1, &self->_depthRenderbuffer);
        glBindRenderbuffer(0x8D41u, self->_depthRenderbuffer);
        glRenderbufferStorage(0x8D41u, v7, self->_drawableWidth, self->_drawableHeight);
        depthRenderbuffer = self->_depthRenderbuffer;
        v24 = 36096;
        goto LABEL_28;
      }

      v15 = 436;
      glGenRenderbuffers(1, &self->_depthStencilRenderbuffer);
      glBindRenderbuffer(0x8D41u, self->_depthStencilRenderbuffer);
      glRenderbufferStorage(0x8D41u, 0x88F0u, self->_drawableWidth, self->_drawableHeight);
      glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, self->_depthStencilRenderbuffer);
    }

    else
    {
      if (!v14)
      {
        goto LABEL_29;
      }

      v15 = 432;
      glGenRenderbuffers(1, &self->_stencilRenderbuffer);
      glBindRenderbuffer(0x8D41u, self->_stencilRenderbuffer);
      glRenderbufferStorage(0x8D41u, 0x8D48u, self->_drawableWidth, self->_drawableHeight);
    }

    depthRenderbuffer = *(&self->super.super.super.isa + v15);
    v24 = 36128;
LABEL_28:
    glFramebufferRenderbuffer(0x8D40u, v24, 0x8D41u, depthRenderbuffer);
    goto LABEL_29;
  }
}

- (void)_deleteFramebuffer
{
  if (self->_context)
  {
    self->_shouldDeleteFramebuffer = 0;
    [MEMORY[0x277CD9388] setCurrentContext:self->_context];
    glPushGroupMarkerEXT(0, "Delete Framebuffer");
    if (self->_resolveFramebuffer)
    {
      glDeleteFramebuffers(1, &self->_resolveFramebuffer);
      self->_resolveFramebuffer = 0;
    }

    if (self->_resolveColorRenderbuffer)
    {
      glDeleteRenderbuffers(1, &self->_resolveColorRenderbuffer);
      self->_resolveColorRenderbuffer = 0;
    }

    if (self->_multisampleFramebuffer)
    {
      glDeleteFramebuffers(1, &self->_multisampleFramebuffer);
      self->_multisampleFramebuffer = 0;
    }

    if (self->_multisampleColorRenderbuffer)
    {
      glDeleteRenderbuffers(1, &self->_multisampleColorRenderbuffer);
      self->_multisampleColorRenderbuffer = 0;
    }

    if (self->_depthRenderbuffer)
    {
      glDeleteRenderbuffers(1, &self->_depthRenderbuffer);
      self->_depthRenderbuffer = 0;
    }

    if (self->_stencilRenderbuffer)
    {
      glDeleteRenderbuffers(1, &self->_stencilRenderbuffer);
      self->_stencilRenderbuffer = 0;
    }

    if (self->_depthStencilRenderbuffer)
    {
      glDeleteRenderbuffers(1, &self->_depthStencilRenderbuffer);
      self->_depthStencilRenderbuffer = 0;
    }

    glPopGroupMarkerEXT();
  }
}

- (void)_setFramebuffer:(BOOL *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  if (self->_context)
  {
    [MEMORY[0x277CD9388] setCurrentContext:?];
    if (self->_shouldDeleteFramebuffer)
    {
      [(GLKView *)self _deleteFramebuffer];
    }

    p_resolveFramebuffer = &self->_resolveFramebuffer;
    if (!self->_resolveFramebuffer)
    {
      [(GLKView *)self _createFramebuffer];
      if (a3)
      {
        *a3 = 1;
      }
    }

    if (self->_drawableMultisample)
    {
      p_resolveFramebuffer = &self->_multisampleFramebuffer;
    }

    glBindFramebuffer(0x8D40u, *p_resolveFramebuffer);
    drawableWidth = self->_drawableWidth;
    drawableHeight = self->_drawableHeight;

    glViewport(0, 0, drawableWidth, drawableHeight);
  }
}

- (void)_resolveAndDiscard
{
  v4 = *MEMORY[0x277D85DE8];
  glPushGroupMarkerEXT(0, "Resolve and Discard");
  if (self->_drawableMultisample)
  {
    glBindFramebuffer(0x8CA8u, self->_multisampleFramebuffer);
    glBindFramebuffer(0x8CA9u, self->_resolveFramebuffer);
    if ([(EAGLContext *)self->_context API]== kEAGLRenderingAPIOpenGLES3)
    {
      glBlitFramebuffer(0, 0, self->_drawableWidth, self->_drawableHeight, 0, 0, self->_drawableWidth, self->_drawableHeight, 0x4000u, 0x2601u);
    }

    else
    {
      glResolveMultisampleFramebufferAPPLE();
    }
  }

  glDiscardFramebufferEXT();
  glPopGroupMarkerEXT();
  v3 = *MEMORY[0x277D85DE8];
}

- (BOOL)_presentFramebuffer
{
  glBindRenderbuffer(0x8D41u, self->_resolveColorRenderbuffer);
  context = self->_context;

  return [(EAGLContext *)context presentRenderbuffer:36161];
}

- (void)_display:(BOOL)a3
{
  self->_inDraw = 1;
  if (self->_context)
  {
    v4 = a3;
    v8 = 0;
    [(GLKView *)self _setFramebuffer:&v8];
    glPushGroupMarkerEXT(0, "Rendering");
    drawRectIMP = self->_drawRectIMP;
    if (drawRectIMP)
    {
      v6 = drawRectIMP == _drawRectUIViewIMP;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        delegate = self->_delegate;
        [(GLKView *)self bounds];
        [(GLKViewDelegate *)delegate glkView:self drawInRect:?];
      }
    }

    else
    {
      [(GLKView *)self bounds];
      drawRectIMP(self, sel_drawRect_);
    }

    glPopGroupMarkerEXT();
    if (v8 == 1)
    {
      glFinish();
    }

    [(GLKView *)self _resolveAndDiscard];
    if (v4)
    {
      [(GLKView *)self _presentFramebuffer];
    }
  }

  self->_inDraw = 0;
}

- (void)setContext:(EAGLContext *)context
{
  if (self->_context != context)
  {
    v5 = [MEMORY[0x277CD9388] currentContext];
    [(GLKView *)self _deleteFramebuffer];

    self->_context = context;
    v6 = MEMORY[0x277CD9388];

    [v6 setCurrentContext:v5];
  }
}

- (void)setDrawableColorFormat:(GLKViewDrawableColorFormat)drawableColorFormat
{
  if (self->_drawableColorFormat != drawableColorFormat)
  {
    self->_shouldDeleteFramebuffer = 1;
    self->_drawableColorFormat = drawableColorFormat;
  }
}

- (void)setDrawableDepthFormat:(GLKViewDrawableDepthFormat)drawableDepthFormat
{
  if (self->_drawableDepthFormat != drawableDepthFormat)
  {
    self->_shouldDeleteFramebuffer = 1;
    self->_drawableDepthFormat = drawableDepthFormat;
  }
}

- (void)setDrawableStencilFormat:(GLKViewDrawableStencilFormat)drawableStencilFormat
{
  if (self->_drawableStencilFormat != drawableStencilFormat)
  {
    self->_shouldDeleteFramebuffer = 1;
    self->_drawableStencilFormat = drawableStencilFormat;
  }
}

- (void)setDrawableMultisample:(GLKViewDrawableMultisample)drawableMultisample
{
  if (self->_drawableMultisample != drawableMultisample)
  {
    self->_shouldDeleteFramebuffer = 1;
    self->_drawableMultisample = drawableMultisample;
  }
}

- (UIImage)snapshot
{
  if (self->_inDraw)
  {
    [MEMORY[0x277CBEAD8] raise:@"GLKViewSnapshotInDraw" format:@"snapshot method cannot be called from within draw"];
    return 0;
  }

  else
  {
    params = 0;
    [(GLKView *)self _display:0];
    glPushGroupMarkerEXT(0, "Take Snapshot");
    glBindFramebuffer(0x8D40u, self->_resolveFramebuffer);
    v4 = 4 * self->_drawableWidth;
    v5 = malloc_type_malloc(self->_drawableHeight * v4, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      glGetIntegerv(0xD05u, &params);
      glPixelStorei(0xD05u, 1);
      glReadPixels(0, 0, self->_drawableWidth, self->_drawableHeight, 0x1908u, 0x1401u, v6);
      glPixelStorei(0xD05u, params);
      v7 = CFDataCreate(*MEMORY[0x277CBECE8], v6, self->_drawableHeight * v4);
      if (v7)
      {
        v8 = v7;
        v9 = CGDataProviderCreateWithCFData(v7);
        if (v9)
        {
          v10 = v9;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          v12 = CGImageCreate(self->_drawableWidth, self->_drawableHeight, 8uLL, 0x20uLL, v4, DeviceRGB, 1u, v10, 0, 0, kCGRenderingIntentDefault);
          if (v12)
          {
            v13 = v12;
            [(GLKView *)self contentScaleFactor];
            v15 = v14;
            v16 = (self->_drawableWidth / v14);
            v17 = (self->_drawableHeight / v14);
            v21.width = v16;
            v21.height = v17;
            UIGraphicsBeginImageContextWithOptions(v21, 0, v15);
            CurrentContext = UIGraphicsGetCurrentContext();
            CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
            v22.origin.x = 0.0;
            v22.origin.y = 0.0;
            v22.size.width = v16;
            v22.size.height = v17;
            CGContextDrawImage(CurrentContext, v22, v13);
            ImageFromCurrentImageContext = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            CGImageRelease(v13);
          }

          else
          {
            ImageFromCurrentImageContext = 0;
          }

          CGColorSpaceRelease(DeviceRGB);
          CGDataProviderRelease(v10);
        }

        else
        {
          ImageFromCurrentImageContext = 0;
        }

        CFRelease(v8);
      }

      else
      {
        ImageFromCurrentImageContext = 0;
      }

      free(v6);
    }

    else
    {
      ImageFromCurrentImageContext = 0;
    }

    glPopGroupMarkerEXT();
  }

  return ImageFromCurrentImageContext;
}

- (void)displayLayer:(id)a3
{
  if (self->_enableSetNeedsDisplay)
  {
    [(GLKView *)self _display:1];
  }
}

- (void)setContentScaleFactor:(double)a3
{
  if (self->_viewContentScaleFactor != a3)
  {
    self->_viewContentScaleFactor = a3;
    self->_shouldDeleteFramebuffer = 1;
  }

  v6.receiver = self;
  v6.super_class = GLKView;
  [(GLKView *)&v6 setContentScaleFactor:?];
  v5.receiver = self;
  v5.super_class = GLKView;
  [(GLKView *)&v5 contentScaleFactor];
  self->_viewContentScaleFactor = v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = GLKView;
  [(GLKView *)&v14 layoutSubviews];
  [(GLKView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  p_viewBounds = &self->_viewBounds;
  Width = CGRectGetWidth(self->_viewBounds);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  if (Width != CGRectGetWidth(v15))
  {
    goto LABEL_3;
  }

  v16.origin.x = p_viewBounds->origin.x;
  v16.origin.y = self->_viewBounds.origin.y;
  v16.size.width = self->_viewBounds.size.width;
  v16.size.height = self->_viewBounds.size.height;
  Height = CGRectGetHeight(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  if (Height != CGRectGetHeight(v17))
  {
LABEL_3:
    p_viewBounds->origin.x = v4;
    self->_viewBounds.origin.y = v6;
    self->_viewBounds.size.width = v8;
    self->_viewBounds.size.height = v10;
    self->_shouldDeleteFramebuffer = 1;
  }
}

- (CGRect)viewBounds
{
  x = self->_viewBounds.origin.x;
  y = self->_viewBounds.origin.y;
  width = self->_viewBounds.size.width;
  height = self->_viewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end