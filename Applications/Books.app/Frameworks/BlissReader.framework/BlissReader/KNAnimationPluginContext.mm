@interface KNAnimationPluginContext
- (BOOL)isBuild;
- (BOOL)isFrameRenderer;
- (BOOL)isMagicMove;
- (BOOL)isMetalRenderer;
- (CGRect)animationFrame;
- (CGRect)drawableFrame;
- (KNAnimationRandomGenerator)randomGenerator;
- (NSString)description;
- (void)dealloc;
@end

@implementation KNAnimationPluginContext

- (void)dealloc
{
  self->_metalContext = 0;
  v3.receiver = self;
  v3.super_class = KNAnimationPluginContext;
  [(KNAnimationPluginContext *)&v3 dealloc];
}

- (BOOL)isBuild
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  if ((rendererType - 1) < 2)
  {
    return 1;
  }

  if (rendererType)
  {
    if (rendererType == 10)
    {
      return 1;
    }
  }

  else
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return 0;
}

- (BOOL)isMagicMove
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  if ((rendererType - 7) < 2)
  {
    return 1;
  }

  if (!rendererType)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return 0;
}

- (BOOL)isFrameRenderer
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  result = 0;
  if (rendererType <= 0xA)
  {
    if (((1 << rendererType) & 0x754) != 0)
    {
      return 1;
    }

    else if (!rendererType)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return 0;
    }
  }

  return result;
}

- (BOOL)isMetalRenderer
{
  rendererType = [(KNAnimationPluginContext *)self rendererType];
  if ((rendererType - 9) < 2)
  {
    return 1;
  }

  if (!rendererType)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return 0;
}

- (NSString)description
{
  v3 = +[NSMutableArray array];
  if ([(KNAnimationPluginContext *)self isBuild])
  {
    v4 = @"isBuild";
  }

  else
  {
    v4 = @"isTransition";
  }

  [v3 addObject:v4];
  if ([(KNAnimationPluginContext *)self isMagicMove])
  {
    [v3 addObject:@"isMagicMove"];
  }

  if ([(KNAnimationPluginContext *)self isMagicMove])
  {
    magicMoveMatches = [(KNAnimationPluginContext *)self magicMoveMatches];
    v6 = @"magicMoveMatches:%ld";
  }

  else
  {
    magicMoveMatches = [(KNAnimationPluginContext *)self textures];
    v6 = @"textures:%ld";
  }

  [v3 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", v6, -[NSArray count](magicMoveMatches, "count"))}];
  if ([(KNAnimationPluginContext *)self isFrameRenderer])
  {
    [(KNAnimationPluginContext *)self percent];
    [v3 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"percent:%0.3f", v7)}];
  }

  v9.receiver = self;
  v9.super_class = KNAnimationPluginContext;
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@: {%@}", -[KNAnimationPluginContext description](&v9, "description"), [v3 componentsJoinedByString:{@", "}]);
}

- (KNAnimationRandomGenerator)randomGenerator
{
  if (qword_567768 != -1)
  {
    sub_29CAEC();
  }

  result = self->_randomGenerator;
  if (!result)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_29910;
    block[3] = &unk_45AE00;
    block[4] = self;
    dispatch_sync(qword_567760, block);
    result = self->_randomGenerator;
    if (!result)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      return self->_randomGenerator;
    }
  }

  return result;
}

- (CGRect)drawableFrame
{
  x = self->_drawableFrame.origin.x;
  y = self->_drawableFrame.origin.y;
  width = self->_drawableFrame.size.width;
  height = self->_drawableFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)animationFrame
{
  x = self->_animationFrame.origin.x;
  y = self->_animationFrame.origin.y;
  width = self->_animationFrame.size.width;
  height = self->_animationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end