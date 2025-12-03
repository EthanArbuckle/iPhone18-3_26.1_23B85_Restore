@interface CRLSelectionViewController_i
- (void)didEndZoomingOperation;
- (void)willBeginZoomingOperation;
@end

@implementation CRLSelectionViewController_i

- (void)willBeginZoomingOperation
{
  selfCopy = self;
  sub_100BC0BAC();
}

- (void)didEndZoomingOperation
{
  selfCopy = self;
  sub_100BC0690();
}

@end