@interface THWGutterInfo
- (CGRect)stageFrame;
- (TSWPopUpInfo)popUpInfo;
- (int64_t)gutterOrderCompare:(id)a3;
- (void)dealloc;
@end

@implementation THWGutterInfo

- (void)dealloc
{
  [(THWGutterInfo *)self setAssociatedInfo:0];
  [(THWGutterInfo *)self setStageInfo:0];
  [(THWGutterInfo *)self setBackgroundShape:0];
  [(THWGutterInfo *)self setTitleShape:0];
  [(THWGutterInfo *)self setExpandedDrawableToPresent:0];
  v3.receiver = self;
  v3.super_class = THWGutterInfo;
  [(THWGutterInfo *)&v3 dealloc];
}

- (CGRect)stageFrame
{
  v2 = [(TSDDrawableInfo *)[(THWGutterInfo *)self stageInfo] geometry];
  if (v2)
  {
    v3 = v2;
    [v2 position];
    [v3 size];
    TSDRectWithOriginAndSize();
    TSDRoundedRectForMainScreen();
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int64_t)gutterOrderCompare:(id)a3
{
  v4 = [(THWGutterInfo *)self gutterOrder];
  v5 = [a3 gutterOrder];
  v6 = -1;
  if (v4 >= v5)
  {
    v6 = 1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

- (TSWPopUpInfo)popUpInfo
{
  [(THWGutterInfo *)self associatedInfo];
  v2 = TSUProtocolCast();

  return [v2 popUpInfo];
}

@end