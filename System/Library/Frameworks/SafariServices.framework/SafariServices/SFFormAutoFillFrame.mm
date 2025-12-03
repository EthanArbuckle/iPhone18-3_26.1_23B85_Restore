@interface SFFormAutoFillFrame
+ (id)autoFillFrameWithWebProcessPlugInFrame:(id)frame;
- (BOOL)isEqual:(id)equal;
- (OpaqueJSContext)jsContextForMetadataControllerScriptWorld;
- (OpaqueJSValue)jsWrapperInMetadataControllerScriptWorldForNode:(id)node;
- (SFFormAutoFillFrame)initWithWebProcessPlugInFrame:(id)frame;
- (id)_formMetadataController;
- (id)_pageContoller;
- (id)pageMainFrame;
- (void)enumerateChildFramesUsingBlock:(id)block;
@end

@implementation SFFormAutoFillFrame

+ (id)autoFillFrameWithWebProcessPlugInFrame:(id)frame
{
  frameCopy = frame;
  v5 = [[self alloc] initWithWebProcessPlugInFrame:frameCopy];

  return v5;
}

- (SFFormAutoFillFrame)initWithWebProcessPlugInFrame:(id)frame
{
  frameCopy = frame;
  v10.receiver = self;
  v10.super_class = SFFormAutoFillFrame;
  v6 = [(SFFormAutoFillFrame *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_plugInFrame, frame);
    v8 = v7;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_plugInFrame == equalCopy->_plugInFrame;
  }

  return v7;
}

- (id)_pageContoller
{
  _browserContextController = [(WKWebProcessPlugInFrame *)self->_plugInFrame _browserContextController];
  v3 = [_SFWebProcessPlugInPageController pageControllerForBrowserContextController:_browserContextController];

  return v3;
}

- (id)_formMetadataController
{
  _pageContoller = [(SFFormAutoFillFrame *)self _pageContoller];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    formMetadataController = [_pageContoller formMetadataController];
  }

  else
  {
    formMetadataController = 0;
  }

  return formMetadataController;
}

- (id)pageMainFrame
{
  _pageContoller = [(SFFormAutoFillFrame *)self _pageContoller];
  mainFrame = [_pageContoller mainFrame];

  if (mainFrame == self->_plugInFrame)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:mainFrame];
  }

  v6 = selfCopy;

  return v6;
}

- (OpaqueJSContext)jsContextForMetadataControllerScriptWorld
{
  _formMetadataController = [(SFFormAutoFillFrame *)self _formMetadataController];
  scriptWorld = [_formMetadataController scriptWorld];

  if (scriptWorld)
  {
    v5 = [(WKWebProcessPlugInFrame *)self->_plugInFrame jsContextForWorld:scriptWorld];
    jSGlobalContextRef = [v5 JSGlobalContextRef];
  }

  else
  {
    jSGlobalContextRef = 0;
  }

  return jSGlobalContextRef;
}

- (OpaqueJSValue)jsWrapperInMetadataControllerScriptWorldForNode:(id)node
{
  nodeHandle = [node nodeHandle];
  _formMetadataController = [(SFFormAutoFillFrame *)self _formMetadataController];
  scriptWorld = [_formMetadataController scriptWorld];

  jSValueRef = 0;
  if (nodeHandle && scriptWorld)
  {
    v8 = [(WKWebProcessPlugInFrame *)self->_plugInFrame jsNodeForNodeHandle:nodeHandle inWorld:scriptWorld];
    jSValueRef = [v8 JSValueRef];
  }

  return jSValueRef;
}

- (void)enumerateChildFramesUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childFrames = [(WKWebProcessPlugInFrame *)self->_plugInFrame childFrames];
  v6 = [childFrames countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(childFrames);
        }

        v10 = [SFFormAutoFillFrame autoFillFrameWithWebProcessPlugInFrame:*(*(&v11 + 1) + 8 * v9)];
        blockCopy[2](blockCopy, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [childFrames countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end