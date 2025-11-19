@interface _GCXRComponent
+ (id)componentWithPhysicalInputProfile:(id)a3;
- (_GCXRComponent)initWithIdentifier:(id)a3;
- (void)setController:(id)a3;
- (void)updateSkeletons;
@end

@implementation _GCXRComponent

- (_GCXRComponent)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCXRComponent;
  v5 = [(_GCXRComponent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (void)setController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_controller, obj);
    v5 = [obj physicalInputProfile];
    physicalInput = self->_physicalInput;
    self->_physicalInput = v5;

    [(_GCXRComponent *)self updateSkeletons];
  }
}

+ (id)componentWithPhysicalInputProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 buttons];
  v6 = [v5 objectForKeyedSubscript:@"XRPropertyButtonFingerRing"];

  if (v6)
  {
    v7 = [_GCXRComponent alloc];
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [(_GCXRComponent *)v7 initWithIdentifier:v8];

    if (v9)
    {
      objc_storeStrong((v9 + 24), a3);
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = *(v9 + 48);
      *(v9 + 48) = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)updateSkeletons
{
  [(NSMutableDictionary *)self->_handSkeletons removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_controller);
  v4 = [WeakRetained componentForProtocol:&unk_1F4EB3888];

  if (v4)
  {
    v5 = [v4 handedness];
  }

  else
  {
    v6 = [(GCPhysicalInputProfile *)self->_physicalInput buttons];
    v7 = [v6 objectForKeyedSubscript:@"GCPropertyValueHandedness"];

    if (v7)
    {
      [v7 value];
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if ((v5 | 2) == 3)
  {
    v9 = [_GCHandSkeleton alloc];
    physicalInput = self->_physicalInput;
    memcpy(v18, &kGCBoneDataRestingLeft, sizeof(v18));
    v11 = [(_GCHandSkeleton *)v9 initWithBoneData:v18 profile:physicalInput handedness:1];
    p_leftHandSkeleton = &self->_leftHandSkeleton;
    leftHandSkeleton = self->_leftHandSkeleton;
    self->_leftHandSkeleton = v11;

    [(NSMutableDictionary *)self->_handSkeletons setValue:self->_leftHandSkeleton forKey:@"GCHandSkeletonLeft"];
    if (v5 == 1)
    {
      goto LABEL_11;
    }
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v14 = [_GCHandSkeleton alloc];
    v15 = self->_physicalInput;
    memcpy(v18, &kGCBoneDataRestingRight, sizeof(v18));
    v16 = [(_GCHandSkeleton *)v14 initWithBoneData:v18 profile:v15 handedness:2];
    p_leftHandSkeleton = &self->_rightHandSkeleton;
    rightHandSkeleton = self->_rightHandSkeleton;
    self->_rightHandSkeleton = v16;

    [(NSMutableDictionary *)self->_handSkeletons setValue:self->_rightHandSkeleton forKey:@"GCHandSkeletonRight"];
    if (v5 == 2)
    {
LABEL_11:
      [(NSMutableDictionary *)self->_handSkeletons setValue:*p_leftHandSkeleton forKey:@"GCHandSkeletonAny"];
    }
  }
}

@end