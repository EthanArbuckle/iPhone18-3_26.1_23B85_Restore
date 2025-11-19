@interface _WeakPersonalizedCompoundItem
- (PersonalizedCompoundItem)item;
@end

@implementation _WeakPersonalizedCompoundItem

- (PersonalizedCompoundItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end