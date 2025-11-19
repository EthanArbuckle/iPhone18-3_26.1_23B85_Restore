@interface EKPersistentLocation
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)semanticIdentifier;
@end

@implementation EKPersistentLocation

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_3 != -1)
  {
    +[EKPersistentLocation defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_3;

  return v3;
}

+ (id)relations
{
  if (relations_onceToken_6 != -1)
  {
    +[EKPersistentLocation relations];
  }

  v3 = relations_relations_6;

  return v3;
}

void __47__EKPersistentLocation_defaultPropertiesToLoad__block_invoke()
{
  v6[7] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992A30];
  v6[0] = *MEMORY[0x1E6992A88];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6992A60];
  v6[2] = *MEMORY[0x1E6992A58];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6992A68];
  v6[4] = *MEMORY[0x1E6992A48];
  v6[5] = v2;
  v6[6] = *MEMORY[0x1E6992A80];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:7];
  v4 = defaultPropertiesToLoad_defaultPropertiesToLoad_3;
  defaultPropertiesToLoad_defaultPropertiesToLoad_3 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

void __33__EKPersistentLocation_relations__block_invoke()
{
  v0 = *MEMORY[0x1E69926D8];
  v1 = *MEMORY[0x1E6992580];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69926D8], *MEMORY[0x1E6992580], *MEMORY[0x1E69926F8], *MEMORY[0x1E69925A8], 0}];
  v9 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v2 ownsRelated:0];

  [v9 setInversePropertyIsApplicable:&__block_literal_global_11];
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = *MEMORY[0x1E6992A40];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:v0];
  v6 = [EKRelation relationWithEntityName:@"Alarm" toMany:0 inversePropertyNames:v5 ownsRelated:0];
  v7 = [v3 initWithObjectsAndKeys:{v9, v4, v6, *MEMORY[0x1E6992A38], 0}];
  v8 = relations_relations_6;
  relations_relations_6 = v7;
}

BOOL __33__EKPersistentLocation_relations__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 primitiveRelationValueForKey:v6];
    v10 = v9 == v8;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EKPersistentLocation);
  v5 = [(EKPersistentLocation *)self title];
  [(EKPersistentLocation *)v4 setTitle:v5];

  v6 = [(EKPersistentLocation *)self address];
  [(EKPersistentLocation *)v4 setAddress:v6];

  v7 = [(EKPersistentLocation *)self latitude];
  [(EKPersistentLocation *)v4 setLatitude:v7];

  v8 = [(EKPersistentLocation *)self longitude];
  [(EKPersistentLocation *)v4 setLongitude:v8];

  v9 = [(EKPersistentLocation *)self contactLabel];
  [(EKPersistentLocation *)v4 setContactLabel:v9];

  v10 = [(EKPersistentLocation *)self mapKitHandle];
  [(EKPersistentLocation *)v4 setMapKitHandle:v10];

  v11 = [(EKPersistentLocation *)self radius];
  [(EKPersistentLocation *)v4 setRadius:v11];

  v12 = [(EKPersistentLocation *)self routing];
  [(EKPersistentLocation *)v4 setRouting:v12];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKPersistentLocation *)self title];
  v6 = [(EKPersistentLocation *)self address];
  v7 = [(EKPersistentLocation *)self latitude];
  v8 = [(EKPersistentLocation *)self longitude];
  v9 = [(EKPersistentLocation *)self contactLabel];
  v10 = [(EKPersistentLocation *)self radius];
  v11 = [(EKPersistentLocation *)self routing];
  v12 = [v3 stringWithFormat:@"%@ <%p> {title = %@ address = %@; lat = %@; long = %@; abID = %@; radius = %@, routing = %@}", v4, self, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)semanticIdentifier
{
  v3 = [(EKPersistentLocation *)self title];
  v4 = [(EKPersistentLocation *)self address];
  v5 = [(EKPersistentLocation *)self mapKitHandle];
  v6 = [(EKPersistentLocation *)self contactLabel];
  v7 = [(EKPersistentLocation *)self latitude];
  v8 = [(EKPersistentLocation *)self longitude];
  v9 = [(EKPersistentLocation *)self radius];
  v10 = [EKStructuredLocationSemanticIdentifierGenerator semanticIdentifierForLocationWithTitle:v3 address:v4 mapKitHandle:v5 contactLabel:v6 latitude:v7 longitude:v8 radius:v9];

  return v10;
}

@end