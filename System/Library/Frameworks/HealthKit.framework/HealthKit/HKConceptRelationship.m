@interface HKConceptRelationship
- (BOOL)isEqual:(id)a3;
- (HKConcept)destination;
- (HKConceptRelationship)init;
- (HKConceptRelationship)initWithCoder:(id)a3;
- (HKConceptRelationship)initWithType:(int64_t)a3 destination:(id)a4 weakDestination:(id)a5 version:(int64_t)a6 deleted:(BOOL)a7;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKConceptRelationship

- (HKConceptRelationship)initWithType:(int64_t)a3 destination:(id)a4 weakDestination:(id)a5 version:(int64_t)a6 deleted:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (!(v13 | v14))
  {
    [HKConceptRelationship initWithType:a2 destination:self weakDestination:&v22 version:? deleted:?];
    goto LABEL_13;
  }

  if (v13 && v14)
  {
    [HKConceptRelationship initWithType:a2 destination:self weakDestination:&v22 version:? deleted:?];
LABEL_13:
  }

  v21.receiver = self;
  v21.super_class = HKConceptRelationship;
  v16 = [(HKConceptRelationship *)&v21 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    if (v13)
    {
      v18 = [v13 copy];
      destination = v17->_destination;
      v17->_destination = v18;
    }

    else if (v15)
    {
      objc_storeWeak(&v16->_weakDestination, v15);
    }

    v17->_version = a6;
    v17->_deleted = a7;
  }

  return v17;
}

- (HKConcept)destination
{
  destination = self->_destination;
  if (destination)
  {
    WeakRetained = destination;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakDestination);
  }

  return WeakRetained;
}

- (HKConceptRelationship)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_type == v5->_type)
      {
        v6 = [(HKConceptRelationship *)self destination];
        v7 = [(HKConceptRelationship *)v5 destination];
        if (v6 == v7)
        {
          v11 = self->_version == v5->_version && self->_deleted == v5->_deleted;
        }

        else
        {
          v8 = [(HKConceptRelationship *)v5 destination];
          if (v8)
          {
            v9 = [(HKConceptRelationship *)self destination];
            v10 = [(HKConceptRelationship *)v5 destination];
            v11 = [v9 isEqual:v10] && self->_version == v5->_version && self->_deleted == v5->_deleted;
          }

          else
          {
            v11 = 0;
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(HKConceptRelationship *)self destination];
  v5 = [v4 hash] ^ type;
  v6 = self->_version ^ self->_deleted;

  return v5 ^ v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:self->_type forKey:@"Type"];
  destination = self->_destination;
  if (destination)
  {
    [v7 encodeObject:destination forKey:@"Destination"];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakDestination);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_weakDestination);
      [v7 encodeObject:v6 forKey:@"WeakDestination"];
    }
  }

  [v7 encodeInt64:self->_version forKey:@"Version"];
  [v7 encodeBool:self->_deleted forKey:@"Deleted"];
}

- (HKConceptRelationship)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKConceptRelationship;
  v5 = [(HKConceptRelationship *)&v10 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"Type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WeakDestination"];
    objc_storeWeak(&v5->_weakDestination, v8);

    v5->_version = [v4 decodeInt64ForKey:@"Version"];
    v5->_deleted = [v4 decodeBoolForKey:@"Deleted"];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  type = self->_type;
  WeakRetained = objc_loadWeakRetained(&self->_weakDestination);
  if (WeakRetained)
  {
    v6 = @"Weak ";
  }

  else
  {
    v6 = &stru_1F05FF230;
  }

  v7 = [(HKConceptRelationship *)self destination];
  v8 = [v7 identifier];
  v9 = [v8 rawIdentifier];
  version = self->_version;
  v11 = HKStringFromBool(self->_deleted);
  v12 = [v3 stringWithFormat:@"Concept Relationship: Type: %lld, %@Destination ID: %lld, Version: %lld, Deleted: %@", type, v6, v9, version, v11];

  return v12;
}

- (uint64_t)initWithType:(void *)a3 destination:weakDestination:version:deleted:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"HKConceptRelationship.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"destination == nil || weakDestination == nil"}];
}

- (uint64_t)initWithType:(void *)a3 destination:weakDestination:version:deleted:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"HKConceptRelationship.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"destination != nil || weakDestination != nil"}];
}

@end