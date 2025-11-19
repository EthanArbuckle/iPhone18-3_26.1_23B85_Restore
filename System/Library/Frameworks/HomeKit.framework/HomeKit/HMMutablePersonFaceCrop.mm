@interface HMMutablePersonFaceCrop
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutablePersonFaceCrop

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMPersonFaceCrop allocWithZone:a3];
  v5 = [(HMFaceCrop *)self UUID];
  v6 = [(HMFaceCrop *)self dataRepresentation];
  v7 = [(HMFaceCrop *)self dateCreated];
  [(HMFaceCrop *)self faceBoundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [(HMPersonFaceCrop *)self personUUID];
  v17 = [(HMPersonFaceCrop *)v4 initWithUUID:v5 dataRepresentation:v6 dateCreated:v7 faceBoundingBox:v16 personUUID:v9, v11, v13, v15];

  v18 = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
  [(HMPersonFaceCrop *)v17 setUnassociatedFaceCropUUID:v18];

  [(HMPersonFaceCrop *)v17 setSource:[(HMPersonFaceCrop *)self source]];
  return v17;
}

@end