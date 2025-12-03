@interface HKConceptRelationship
- (BOOL)isEqual:(id)equal;
- (HKConcept)destination;
- (HKConceptRelationship)init;
- (HKConceptRelationship)initWithCoder:(id)coder;
- (HKConceptRelationship)initWithType:(int64_t)type destination:(id)destination weakDestination:(id)weakDestination version:(int64_t)version deleted:(BOOL)deleted;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKConceptRelationship

- (HKConceptRelationship)initWithType:(int64_t)type destination:(id)destination weakDestination:(id)weakDestination version:(int64_t)version deleted:(BOOL)deleted
{
  destinationCopy = destination;
  weakDestinationCopy = weakDestination;
  v15 = weakDestinationCopy;
  if (!(destinationCopy | weakDestinationCopy))
  {
    [HKConceptRelationship initWithType:a2 destination:self weakDestination:&v22 version:? deleted:?];
    goto LABEL_13;
  }

  if (destinationCopy && weakDestinationCopy)
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
    v16->_type = type;
    if (destinationCopy)
    {
      v18 = [destinationCopy copy];
      destination = v17->_destination;
      v17->_destination = v18;
    }

    else if (v15)
    {
      objc_storeWeak(&v16->_weakDestination, v15);
    }

    v17->_version = version;
    v17->_deleted = deleted;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self->_type == v5->_type)
      {
        destination = [(HKConceptRelationship *)self destination];
        destination2 = [(HKConceptRelationship *)v5 destination];
        if (destination == destination2)
        {
          v11 = self->_version == v5->_version && self->_deleted == v5->_deleted;
        }

        else
        {
          destination3 = [(HKConceptRelationship *)v5 destination];
          if (destination3)
          {
            destination4 = [(HKConceptRelationship *)self destination];
            destination5 = [(HKConceptRelationship *)v5 destination];
            v11 = [destination4 isEqual:destination5] && self->_version == v5->_version && self->_deleted == v5->_deleted;
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
  destination = [(HKConceptRelationship *)self destination];
  v5 = [destination hash] ^ type;
  v6 = self->_version ^ self->_deleted;

  return v5 ^ v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  destination = self->_destination;
  if (destination)
  {
    [coderCopy encodeObject:destination forKey:@"Destination"];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakDestination);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_weakDestination);
      [coderCopy encodeObject:v6 forKey:@"WeakDestination"];
    }
  }

  [coderCopy encodeInt64:self->_version forKey:@"Version"];
  [coderCopy encodeBool:self->_deleted forKey:@"Deleted"];
}

- (HKConceptRelationship)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKConceptRelationship;
  v5 = [(HKConceptRelationship *)&v10 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"Type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WeakDestination"];
    objc_storeWeak(&v5->_weakDestination, v8);

    v5->_version = [coderCopy decodeInt64ForKey:@"Version"];
    v5->_deleted = [coderCopy decodeBoolForKey:@"Deleted"];
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

  destination = [(HKConceptRelationship *)self destination];
  identifier = [destination identifier];
  rawIdentifier = [identifier rawIdentifier];
  version = self->_version;
  v11 = HKStringFromBool(self->_deleted);
  v12 = [v3 stringWithFormat:@"Concept Relationship: Type: %lld, %@Destination ID: %lld, Version: %lld, Deleted: %@", type, v6, rawIdentifier, version, v11];

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