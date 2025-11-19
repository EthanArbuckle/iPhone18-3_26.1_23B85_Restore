@interface SpokenContentSelectionProvider
- (void)siriVoiceChanged;
@end

@implementation SpokenContentSelectionProvider

- (void)siriVoiceChanged
{
  v2 = *self->lock;

  os_unfair_lock_lock(v2 + 4);
  sub_18B2B5D30();
  os_unfair_lock_unlock(v2 + 4);
}

@end