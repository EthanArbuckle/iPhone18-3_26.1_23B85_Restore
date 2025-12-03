@interface ViewWithDrawInfo
- (ViewWithDrawInfo)init;
- (id)description;
- (void)drawRect:(CGRect)rect;
- (void)setDrawInfo:(id)info;
@end

@implementation ViewWithDrawInfo

- (ViewWithDrawInfo)init
{
  v6.receiver = self;
  v6.super_class = ViewWithDrawInfo;
  v2 = [(ViewWithDrawInfo *)&v6 init];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(ViewWithDrawInfo *)v2 setBackgroundColor:clearColor];

    [(ViewWithDrawInfo *)v2 setUserInteractionEnabled:0];
    layer = [(ViewWithDrawInfo *)v2 layer];
    [layer setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [layer setNeedsDisplay];
  }

  return v2;
}

- (void)setDrawInfo:(id)info
{
  objc_storeStrong(&self->_drawInfo, info);

  [(ViewWithDrawInfo *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  v9.receiver = self;
  v9.super_class = ViewWithDrawInfo;
  [(ViewWithDrawInfo *)&v9 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  drawInfo = [(ViewWithDrawInfo *)self drawInfo];
  renderingBlock = [drawInfo renderingBlock];

  if (renderingBlock)
  {
    drawInfo2 = [(ViewWithDrawInfo *)self drawInfo];
    renderingBlock2 = [drawInfo2 renderingBlock];
    CurrentContext = UIGraphicsGetCurrentContext();
    (renderingBlock2)[2](renderingBlock2, CurrentContext);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = ViewWithDrawInfo;
  v4 = [(ViewWithDrawInfo *)&v12 description];
  drawInfo = [(ViewWithDrawInfo *)self drawInfo];
  [drawInfo contentSize];
  v6 = NSStringFromCGSize(v14);
  drawInfo2 = [(ViewWithDrawInfo *)self drawInfo];
  renderingBlock = [drawInfo2 renderingBlock];
  v9 = _Block_copy(renderingBlock);
  v10 = [v3 stringWithFormat:@"%@ <contentSize: %@, drawBlock: %@>", v4, v6, v9];

  return v10;
}

@end