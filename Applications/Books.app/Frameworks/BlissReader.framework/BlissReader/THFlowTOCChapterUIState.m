@interface THFlowTOCChapterUIState
- (THFlowTOCChapterUIState)initWithSection:(id)a3;
- (void)dealloc;
@end

@implementation THFlowTOCChapterUIState

- (THFlowTOCChapterUIState)initWithSection:(id)a3
{
  v6.receiver = self;
  v6.super_class = THFlowTOCChapterUIState;
  v4 = [(THFlowTOCChapterUIState *)&v6 init];
  if (v4)
  {
    v4->mSection = a3;
    v4->mOpened = 0;
  }

  return v4;
}

- (void)dealloc
{
  self->mSection = 0;

  self->mSubItems = 0;
  v3.receiver = self;
  v3.super_class = THFlowTOCChapterUIState;
  [(THFlowTOCChapterUIState *)&v3 dealloc];
}

@end