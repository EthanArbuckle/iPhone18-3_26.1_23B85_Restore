@interface HMMutablePersonFaceCrop
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutablePersonFaceCrop

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMPersonFaceCrop allocWithZone:zone];
  uUID = [(HMFaceCrop *)self UUID];
  dataRepresentation = [(HMFaceCrop *)self dataRepresentation];
  dateCreated = [(HMFaceCrop *)self dateCreated];
  [(HMFaceCrop *)self faceBoundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  personUUID = [(HMPersonFaceCrop *)self personUUID];
  v17 = [(HMPersonFaceCrop *)v4 initWithUUID:uUID dataRepresentation:dataRepresentation dateCreated:dateCreated faceBoundingBox:personUUID personUUID:v9, v11, v13, v15];

  unassociatedFaceCropUUID = [(HMPersonFaceCrop *)self unassociatedFaceCropUUID];
  [(HMPersonFaceCrop *)v17 setUnassociatedFaceCropUUID:unassociatedFaceCropUUID];

  [(HMPersonFaceCrop *)v17 setSource:[(HMPersonFaceCrop *)self source]];
  return v17;
}

@end