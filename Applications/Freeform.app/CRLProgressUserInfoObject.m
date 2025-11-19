@interface CRLProgressUserInfoObject
- (CRLProgress)progress;
@end

@implementation CRLProgressUserInfoObject

- (CRLProgress)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_progress);

  return WeakRetained;
}

@end