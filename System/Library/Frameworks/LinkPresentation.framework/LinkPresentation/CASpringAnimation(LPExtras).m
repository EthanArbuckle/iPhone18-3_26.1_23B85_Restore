@interface CASpringAnimation(LPExtras)
+ (id)_lp_springWithMass:()LPExtras stiffness:damping:;
@end

@implementation CASpringAnimation(LPExtras)

+ (id)_lp_springWithMass:()LPExtras stiffness:damping:
{
  v6 = objc_alloc_init(MEMORY[0x1E69794A8]);
  [v6 setMass:a1];
  [v6 setStiffness:a2];
  [v6 setDamping:a3];
  [v6 setFillMode:*MEMORY[0x1E69797D8]];
  [v6 settlingDuration];
  [v6 setDuration:?];

  return v6;
}

@end