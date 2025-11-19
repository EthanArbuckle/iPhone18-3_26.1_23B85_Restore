@interface FigCaptionBackdropLayer
- (FigCaptionBackdropLayer)init;
- (void)configure;
- (void)dealloc;
- (void)insertBackdropAsSublayerToLayer:(id)a3 below:(id)a4;
@end

@implementation FigCaptionBackdropLayer

- (FigCaptionBackdropLayer)init
{
  v5.receiver = self;
  v5.super_class = FigCaptionBackdropLayer;
  v2 = [(FigBaseCABackdropLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FigCaptionBackdropLayer *)v2 configure];
  }

  return v3;
}

- (void)dealloc
{
  v3 = *&self->super._preventsChangesToSublayerHierarchy;
  if (v3)
  {
  }

  v4.receiver = self;
  v4.super_class = FigCaptionBackdropLayer;
  [(FigCaptionBackdropLayer *)&v4 dealloc];
}

- (void)configure
{
  v5[1] = *MEMORY[0x1E69E9840];
  [(FigCaptionBackdropLayer *)self setHidden:1];
  if (objc_opt_respondsToSelector())
  {
    [(FigCaptionBackdropLayer *)self setValue:MEMORY[0x1E695E118] forKey:@"allowsInPlaceFiltering"];
  }

  v3 = objc_alloc(MEMORY[0x1E6979378]);
  v4 = [v3 initWithType:*MEMORY[0x1E69798A0]];
  *&self->super._preventsChangesToSublayerHierarchy = v4;
  [v4 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", 1.0), @"inputAmount"}];
  v5[0] = *&self->super._preventsChangesToSublayerHierarchy;
  -[FigCaptionBackdropLayer setFilters:](self, "setFilters:", [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1]);
}

- (void)insertBackdropAsSublayerToLayer:(id)a3 below:(id)a4
{
  if (a3)
  {
    if (a4)
    {

      [a3 insertSublayer:self below:?];
    }

    else
    {
      [FigCaptionBackdropLayer insertBackdropAsSublayerToLayer:below:];
    }
  }

  else
  {
    [FigCaptionBackdropLayer insertBackdropAsSublayerToLayer:below:];
  }
}

- (uint64_t)insertBackdropAsSublayerToLayer:below:.cold.1()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

- (uint64_t)insertBackdropAsSublayerToLayer:below:.cold.2()
{
  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

@end