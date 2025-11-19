@interface ABPKAlgOutput
- (ABPKAlgOutput)initWithConfig:(id)a3;
@end

@implementation ABPKAlgOutput

- (ABPKAlgOutput)initWithConfig:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ABPKAlgOutput;
  v5 = [(ABPKAlgOutput *)&v15 init];
  if (v5)
  {
    if ([v4 algMode] == 4)
    {
      v6 = [[ABPK2dSkeleton alloc] initWithType:1];
      [(ABPKAlgOutput *)v5 setRawDetection2dSkeletonABPK:v6];

      v7 = [[ABPK2dSkeleton alloc] initWithType:1];
    }

    else
    {
      v8 = [[ABPK2dSkeleton alloc] initWithType:0];
      [(ABPKAlgOutput *)v5 setRawDetection2dSkeletonABPK:v8];

      v7 = [[ABPK2dSkeleton alloc] initWithType:0];
    }

    [(ABPKAlgOutput *)v5 setDetection2dSkeletonABPK:v7];

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ABPKAlgOutput *)v5 setRawDetection2dSkeletonABPKArray:v9];

    v10 = [[ABPKSkeleton alloc] initWithType:3];
    [(ABPKAlgOutput *)v5 setLiftingSkeletonABPK:v10];

    v11 = [[ABPK2dSkeleton alloc] initWithType:2];
    [(ABPKAlgOutput *)v5 setRegistered2dSkeletonABPK:v11];

    v12 = [[ABPKSkeleton alloc] initWithType:4];
    [(ABPKAlgOutput *)v5 setRetargetedSkeletonABPK:v12];

    v13 = objc_alloc_init(ABPKAlgorithmState);
    [(ABPKAlgOutput *)v5 setAlgState:v13];
  }

  return v5;
}

@end