@interface C3DBinding
- (void)dealloc;
@end

@implementation C3DBinding

- (void)dealloc
{
  [(C3DBinding *)self setSourceObject:0];
  [(C3DBinding *)self setKeyPathSrc:0];
  [(C3DBinding *)self setKeyPathDst:0];
  [(C3DBinding *)self setOptions:0];
  v3.receiver = self;
  v3.super_class = C3DBinding;
  [(C3DBinding *)&v3 dealloc];
}

@end