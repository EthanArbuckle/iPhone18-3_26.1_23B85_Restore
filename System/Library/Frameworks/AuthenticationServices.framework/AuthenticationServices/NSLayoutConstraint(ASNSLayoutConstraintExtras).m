@interface NSLayoutConstraint(ASNSLayoutConstraintExtras)
+ (id)as_constraintsMatchingFrameOfView:()ASNSLayoutConstraintExtras withFrameOfView:edgeInsets:;
@end

@implementation NSLayoutConstraint(ASNSLayoutConstraintExtras)

+ (id)as_constraintsMatchingFrameOfView:()ASNSLayoutConstraintExtras withFrameOfView:edgeInsets:
{
  v23[4] = *MEMORY[0x1E69E9840];
  v14 = a8;
  v15 = a7;
  v16 = [a1 constraintWithItem:v15 attribute:3 relatedBy:0 toItem:v14 attribute:3 multiplier:1.0 constant:a2];
  v23[0] = v16;
  v17 = [a1 constraintWithItem:v15 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:-a4];
  v23[1] = v17;
  v18 = [a1 constraintWithItem:v15 attribute:5 relatedBy:0 toItem:v14 attribute:5 multiplier:1.0 constant:a3];
  v23[2] = v18;
  v19 = [a1 constraintWithItem:v15 attribute:6 relatedBy:0 toItem:v14 attribute:6 multiplier:1.0 constant:-a5];

  v23[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end