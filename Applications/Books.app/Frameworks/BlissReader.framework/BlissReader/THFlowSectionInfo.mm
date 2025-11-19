@interface THFlowSectionInfo
- (id)childInfos;
- (void)dealloc;
@end

@implementation THFlowSectionInfo

- (id)childInfos
{
  if (![(THSectionInfo *)self contentNode])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THFlowSectionInfo *)self presentationType])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THSectionInfo *)self pages])
  {
    v3 = [(THModelContentNode *)[(THSectionInfo *)self contentNode] pageAtRelativeIndex:0 forPresentationType:[(THFlowSectionInfo *)self presentationType]];
    if (v3)
    {
      [(THSectionInfo *)self setPages:[NSArray arrayWithObject:v3]];
    }

    else
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }
  }

  v4 = [(THSectionInfo *)self pages];

  return [NSArray arrayWithArray:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THFlowSectionInfo;
  [(THSectionInfo *)&v3 dealloc];
}

@end