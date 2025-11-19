@interface SKParticleSystemNode
- (void)_didMakeBackingNode;
@end

@implementation SKParticleSystemNode

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKParticleSystemNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcParticleSystemNode = [(SKNode *)self _backingNode];
}

@end