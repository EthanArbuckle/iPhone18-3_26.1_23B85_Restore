@interface SFFormAutoFillFrame
+ (id)autoFillFrameWithWebProcessPlugInFrame:(id)a3;
- (BOOL)isEqual:(id)a3;
- (OpaqueJSContext)jsContextForMetadataControllerScriptWorld;
- (OpaqueJSValue)jsWrapperInMetadataControllerScriptWorldForNode:(id)a3;
- (SFFormAutoFillFrame)initWithWebProcessPlugInFrame:(id)a3;
- (id)_formMetadataController;
- (id)_pageContoller;
- (id)pageMainFrame;
- (void)enumerateChildFramesUsingBlock:(id)a3;
@end

@implementation SFFormAutoFillFrame

+ (id)autoFillFrameWithWebProcessPlugInFrame:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithWebProcessPlugInFrame:v4];

  return v5;
}

- (SFFormAutoFillFrame)initWithWebProcessPlugInFrame:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFFormAutoFillFrame;
  v6 = [(SFFormAutoFillFrame *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plugInFrame, a3);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_plugInFrame == v4->_plugInFrame;
  }

  return v7;
}

- (id)_pageContoller
{
  v2 = [(WKWebProcessPlugInFrame *)self->_plugInFrame _browserContextController];
  v3 = [_SFWebProcessPlugInPageController pageControllerForBrowserContextController:v2];

  return v3;
}

- (id)_formMetadataController
{
  v2 = [(SFFormAutoFillFrame *)self _pageContoller];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 formMetadataController];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)pageMainFrame
{
  v3 = [(SFFormAutoFillFrame *)self _pageContoller];
  v4 = [v3 mainFrame];

  if (v4 == self->_plugInFrame)
  {
    v5 = self;
  }

  else
  {
    v5 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:v4];
  }

  v6 = v5;

  return v6;
}

- (OpaqueJSContext)jsContextForMetadataControllerScriptWorld
{
  v3 = [(SFFormAutoFillFrame *)self _formMetadataController];
  v4 = [v3 scriptWorld];

  if (v4)
  {
    v5 = [(WKWebProcessPlugInFrame *)self->_plugInFrame jsContextForWorld:v4];
    v6 = [v5 JSGlobalContextRef];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (OpaqueJSValue)jsWrapperInMetadataControllerScriptWorldForNode:(id)a3
{
  v4 = [a3 nodeHandle];
  v5 = [(SFFormAutoFillFrame *)self _formMetadataController];
  v6 = [v5 scriptWorld];

  v7 = 0;
  if (v4 && v6)
  {
    v8 = [(WKWebProcessPlugInFrame *)self->_plugInFrame jsNodeForNodeHandle:v4 inWorld:v6];
    v7 = [v8 JSValueRef];
  }

  return v7;
}

- (void)enumerateChildFramesUsingBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(WKWebProcessPlugInFrame *)self->_plugInFrame childFrames];
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

        v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:*(*(&v11 + 1) + 8 * v9)];
        v4[2](v4, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end