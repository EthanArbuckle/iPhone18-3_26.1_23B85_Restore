@interface DYEAGLOverridingFunctionPlayer
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)performNewFrameActions;
- (void)performPostDispatchFrameBoundaryActions;
- (void)setEngine:(id)a3;
@end

@implementation DYEAGLOverridingFunctionPlayer

- (void)setEngine:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v7 setEngine:v4];
  v5 = [*&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__engine] experimentResultsGenerator];
  experimentResultsGenerator = self->_experimentResultsGenerator;
  self->_experimentResultsGenerator = v5;
}

- (void)executeGraphicsFunction
{
  v3.receiver = self;
  v3.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v3 executeGraphicsFunction];
  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onGraphicsFunctionEnd];
}

- (void)executePlatformFunction
{
  v3 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__function];
  if (*v3 == -12271)
  {
    v4 = **(v3 + 72);
    v5 = *&self->super.DYGLFunctionPlayer_opaque[OBJC_IVAR___DYFunctionPlayer__ctxID];
    DYHarvestRenderbuffer();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DYEAGLOverridingFunctionPlayer;
    [(DYEAGLFunctionPlayer *)&v6 executePlatformFunction];
  }

  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onPlatformFunctionEnd];
}

- (void)performNewFrameActions
{
  v3.receiver = self;
  v3.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v3 performNewFrameActions];
  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onFrameStart];
}

- (void)performPostDispatchFrameBoundaryActions
{
  [(DYGLExperimentResultsGenerator *)self->_experimentResultsGenerator onFrameEnd];
  v3.receiver = self;
  v3.super_class = DYEAGLOverridingFunctionPlayer;
  [(DYEAGLOverridingFunctionPlayer *)&v3 performPostDispatchFrameBoundaryActions];
}

@end