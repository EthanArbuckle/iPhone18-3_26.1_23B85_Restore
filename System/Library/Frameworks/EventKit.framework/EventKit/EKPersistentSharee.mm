@interface EKPersistentSharee
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKPersistentSharee

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken != -1)
  {
    +[EKPersistentSharee defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad;

  return v3;
}

void __45__EKPersistentSharee_defaultPropertiesToLoad__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992C78];
  v4[0] = *MEMORY[0x1E6992B10];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E6992B08];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = defaultPropertiesToLoad_defaultPropertiesToLoad;
  defaultPropertiesToLoad_defaultPropertiesToLoad = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken != -1)
  {
    +[EKPersistentSharee relations];
  }

  v3 = relations_relations;

  return v3;
}

void __31__EKPersistentSharee_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992858]];
  v1 = [EKRelation relationWithEntityName:@"Calendar" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992B18], 0}];
  v3 = relations_relations;
  relations_relations = v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentSharee);
  if (v4)
  {
    v5 = EKUUIDString();
    [(EKPersistentSharee *)v4 setUUID:v5];

    displayName = [(EKPersistentSharee *)self displayName];
    [(EKPersistentSharee *)v4 setDisplayName:displayName];

    address = [(EKPersistentSharee *)self address];
    [(EKPersistentSharee *)v4 setAddress:address];

    externalID = [(EKPersistentSharee *)self externalID];
    [(EKPersistentSharee *)v4 setExternalID:externalID];

    [(EKPersistentSharee *)v4 setShareeStatusRaw:[(EKPersistentSharee *)self shareeStatusRaw]];
    [(EKPersistentSharee *)v4 setShareeAccessLevelRaw:[(EKPersistentSharee *)self shareeAccessLevelRaw]];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  uUID = [(EKPersistentSharee *)self UUID];
  displayName = [(EKPersistentSharee *)self displayName];
  address = [(EKPersistentSharee *)self address];
  firstName = [(EKPersistentSharee *)self firstName];
  lastName = [(EKPersistentSharee *)self lastName];
  v10 = [v3 stringWithFormat:@"%@ <%p> {UUID = %@ displayName = %@; address = %@; firstName = %@; lastName = %@; status = %lu; accessLevel = %lu;}", v4, self, uUID, displayName, address, firstName, lastName, -[EKPersistentSharee shareeStatusRaw](self, "shareeStatusRaw"), -[EKPersistentSharee shareeAccessLevelRaw](self, "shareeAccessLevelRaw")];;

  return v10;
}

@end