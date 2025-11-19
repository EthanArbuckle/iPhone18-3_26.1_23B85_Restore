@interface ViewWithDrawInfo
- (ViewWithDrawInfo)init;
- (id)description;
- (void)drawRect:(CGRect)a3;
- (void)setDrawInfo:(id)a3;
@end

@implementation ViewWithDrawInfo

- (ViewWithDrawInfo)init
{
  v6.receiver = self;
  v6.super_class = ViewWithDrawInfo;
  v2 = [(ViewWithDrawInfo *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    [(ViewWithDrawInfo *)v2 setBackgroundColor:v3];

    [(ViewWithDrawInfo *)v2 setUserInteractionEnabled:0];
    v4 = [(ViewWithDrawInfo *)v2 layer];
    [v4 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
    [v4 setNeedsDisplay];
  }

  return v2;
}

- (void)setDrawInfo:(id)a3
{
  objc_storeStrong(&self->_drawInfo, a3);

  [(ViewWithDrawInfo *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = ViewWithDrawInfo;
  [(ViewWithDrawInfo *)&v9 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(ViewWithDrawInfo *)self drawInfo];
  v5 = [v4 renderingBlock];

  if (v5)
  {
    v6 = [(ViewWithDrawInfo *)self drawInfo];
    v7 = [v6 renderingBlock];
    CurrentContext = UIGraphicsGetCurrentContext();
    (v7)[2](v7, CurrentContext);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = ViewWithDrawInfo;
  v4 = [(ViewWithDrawInfo *)&v12 description];
  v5 = [(ViewWithDrawInfo *)self drawInfo];
  [v5 contentSize];
  v6 = NSStringFromCGSize(v14);
  v7 = [(ViewWithDrawInfo *)self drawInfo];
  v8 = [v7 renderingBlock];
  v9 = _Block_copy(v8);
  v10 = [v3 stringWithFormat:@"%@ <contentSize: %@, drawBlock: %@>", v4, v6, v9];

  return v10;
}

@end