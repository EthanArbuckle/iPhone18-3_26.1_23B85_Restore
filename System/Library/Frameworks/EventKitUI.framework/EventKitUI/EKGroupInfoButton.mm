@interface EKGroupInfoButton
- (CUIKGroupInfo)groupInfo;
@end

@implementation EKGroupInfoButton

- (CUIKGroupInfo)groupInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_groupInfo);

  return WeakRetained;
}

@end