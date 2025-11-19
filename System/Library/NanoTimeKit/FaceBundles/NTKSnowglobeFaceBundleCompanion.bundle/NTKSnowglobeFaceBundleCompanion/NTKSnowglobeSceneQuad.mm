@interface NTKSnowglobeSceneQuad
- (BOOL)prepareForTime:(double)a3;
- (NTKSnowglobeSceneQuad)initWithScene:(id)a3 delegate:(id)a4 device:(id)a5 screenScale:(double)a6;
- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4;
- (void)setupForQuadView:(id)a3;
@end

@implementation NTKSnowglobeSceneQuad

- (NTKSnowglobeSceneQuad)initWithScene:(id)a3 delegate:(id)a4 device:(id)a5 screenScale:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26.receiver = self;
  v26.super_class = NTKSnowglobeSceneQuad;
  v14 = [(CLKUIQuad *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_device, a5);
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

    v22 = [MEMORY[0x277D75348] redColor];
    [(SCNRenderer *)v15->_renderer setBackgroundColor:v22];

    [(SCNRenderer *)v15->_renderer setScene:v11];
    [(SCNRenderer *)v15->_renderer setPlaying:1];
    [(SCNRenderer *)v15->_renderer setDelegate:v12];
    v23 = [v11 rootNode];
    v24 = [v23 childNodeWithName:@"NTKPointOfView" recursively:1];

    [(SCNRenderer *)v15->_renderer setPointOfView:v24];
    objc_storeStrong(&v15->_scene, a3);
    v15->_screenScale = a6;
  }

  return v15;
}

- (void)setupForQuadView:(id)a3
{
  v7 = a3;
  self->_pixelFormat = [v7 colorPixelFormat];
  [v7 bounds];
  screenScale = self->_screenScale;
  self->_size.width = v5 * screenScale;
  self->_size.height = v6 * screenScale;
  [v7 setOpaque:1];
}

- (BOOL)prepareForTime:(double)a3
{
  v5 = [(SCNRenderer *)self->_renderer delegate];
  if (v5)
  {
    [(SCNRenderer *)self->_renderer updateAtTime:a3];

    v6 = [(SCNScene *)self->_scene background];
    v7 = [v6 contents];
    backgroundColor = self->_backgroundColor;

    if (v7 != backgroundColor)
    {
      v9 = [(SCNScene *)self->_scene background];
      v10 = [v9 contents];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v12 = [(SCNScene *)self->_scene background];
        v13 = [v12 contents];
      }

      else
      {
        v13 = [MEMORY[0x277D75348] blackColor];
      }

      v14 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF428]);
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v14, kCGRenderingIntentDefault, [(UIColor *)v13 CGColor], 0);
      Components = CGColorGetComponents(CopyByMatchingToColorSpace);
      v17 = Components[2];
      *&self->_backgroundClearColor.red = *Components;
      self->_backgroundClearColor.blue = v17;
      self->_backgroundClearColor.alpha = 1.0;
      v18 = self->_backgroundColor;
      self->_backgroundColor = v13;

      CGColorRelease(CopyByMatchingToColorSpace);
      CGColorSpaceRelease(v14);
    }
  }

  return v5 != 0;
}

- (void)renderWithCommandBuffer:(id)a3 passDescriptor:(id)a4
{
  v6 = MEMORY[0x277CDBB18];
  v7 = a4;
  v14 = a3;
  [v6 flush];
  red = self->_backgroundClearColor.red;
  green = self->_backgroundClearColor.green;
  blue = self->_backgroundClearColor.blue;
  alpha = self->_backgroundClearColor.alpha;
  v12 = [v7 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setClearColor:{red, green, blue, alpha}];

  [(SCNRenderer *)self->_renderer renderWithViewport:v14 commandBuffer:v7 passDescriptor:0.0, 0.0, self->_size.width, self->_size.height];
}

@end