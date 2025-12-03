@interface NTKSnowglobeSceneQuad
- (BOOL)prepareForTime:(double)time;
- (NTKSnowglobeSceneQuad)initWithScene:(id)scene delegate:(id)delegate device:(id)device screenScale:(double)scale;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setupForQuadView:(id)view;
@end

@implementation NTKSnowglobeSceneQuad

- (NTKSnowglobeSceneQuad)initWithScene:(id)scene delegate:(id)delegate device:(id)device screenScale:(double)scale
{
  sceneCopy = scene;
  delegateCopy = delegate;
  deviceCopy = device;
  v26.receiver = self;
  v26.super_class = NTKSnowglobeSceneQuad;
  v14 = [(CLKUIQuad *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_device, device);
    device = v15->_device;
    if (qword_27E1EDE10 != -1)
    {
      sub_23C08EE68();
    }

    v17 = qword_27E1EDE08;
    v18 = [(MTLDevice *)device newDefaultLibraryWithBundle:v17 error:0];
    library = v15->_library;
    v15->_library = v18;

    v20 = [MEMORY[0x277CDBAE8] rendererWithDevice:v15->_device options:0];
    renderer = v15->_renderer;
    v15->_renderer = v20;

    redColor = [MEMORY[0x277D75348] redColor];
    [(SCNRenderer *)v15->_renderer setBackgroundColor:redColor];

    [(SCNRenderer *)v15->_renderer setScene:sceneCopy];
    [(SCNRenderer *)v15->_renderer setPlaying:1];
    [(SCNRenderer *)v15->_renderer setDelegate:delegateCopy];
    rootNode = [sceneCopy rootNode];
    v24 = [rootNode childNodeWithName:@"NTKPointOfView" recursively:1];

    [(SCNRenderer *)v15->_renderer setPointOfView:v24];
    objc_storeStrong(&v15->_scene, scene);
    v15->_screenScale = scale;
  }

  return v15;
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  self->_pixelFormat = [viewCopy colorPixelFormat];
  [viewCopy bounds];
  screenScale = self->_screenScale;
  self->_size.width = v5 * screenScale;
  self->_size.height = v6 * screenScale;
  [viewCopy setOpaque:1];
}

- (BOOL)prepareForTime:(double)time
{
  delegate = [(SCNRenderer *)self->_renderer delegate];
  if (delegate)
  {
    [(SCNRenderer *)self->_renderer updateAtTime:time];

    background = [(SCNScene *)self->_scene background];
    contents = [background contents];
    backgroundColor = self->_backgroundColor;

    if (contents != backgroundColor)
    {
      background2 = [(SCNScene *)self->_scene background];
      contents2 = [background2 contents];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        background3 = [(SCNScene *)self->_scene background];
        contents3 = [background3 contents];
      }

      else
      {
        contents3 = [MEMORY[0x277D75348] blackColor];
      }

      v14 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF428]);
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v14, kCGRenderingIntentDefault, [(UIColor *)contents3 CGColor], 0);
      Components = CGColorGetComponents(CopyByMatchingToColorSpace);
      v17 = Components[2];
      *&self->_backgroundClearColor.red = *Components;
      self->_backgroundClearColor.blue = v17;
      self->_backgroundClearColor.alpha = 1.0;
      v18 = self->_backgroundColor;
      self->_backgroundColor = contents3;

      CGColorRelease(CopyByMatchingToColorSpace);
      CGColorSpaceRelease(v14);
    }
  }

  return delegate != 0;
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  v6 = MEMORY[0x277CDBB18];
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  [v6 flush];
  red = self->_backgroundClearColor.red;
  green = self->_backgroundClearColor.green;
  blue = self->_backgroundClearColor.blue;
  alpha = self->_backgroundClearColor.alpha;
  colorAttachments = [descriptorCopy colorAttachments];
  v13 = [colorAttachments objectAtIndexedSubscript:0];
  [v13 setClearColor:{red, green, blue, alpha}];

  [(SCNRenderer *)self->_renderer renderWithViewport:bufferCopy commandBuffer:descriptorCopy passDescriptor:0.0, 0.0, self->_size.width, self->_size.height];
}

@end