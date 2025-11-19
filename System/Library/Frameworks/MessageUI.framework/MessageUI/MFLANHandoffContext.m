@interface MFLANHandoffContext
- (void)dealloc;
@end

@implementation MFLANHandoffContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFLANHandoffContext;
  [(MFLANHandoffContext *)&v3 dealloc];
}

@end