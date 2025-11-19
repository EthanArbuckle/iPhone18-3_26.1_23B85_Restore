@interface UIBezierPath(SwiftUI)
- (uint64_t)initWithArcRoundedRectForSwiftUI:()SwiftUI cornerRadius:;
@end

@implementation UIBezierPath(SwiftUI)

- (uint64_t)initWithArcRoundedRectForSwiftUI:()SwiftUI cornerRadius:
{
  v11 = [a1 init];
  v12 = [MEMORY[0x1E69DC728] _bezierPathWithArcRoundedRect:a2 cornerRadius:{a3, a4, a5, a6}];

  return v12;
}

@end