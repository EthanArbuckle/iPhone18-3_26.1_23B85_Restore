@interface EKPersistentExceptionDate
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EKPersistentExceptionDate

+ (id)relations
{
  if (relations_onceToken_10 != -1)
  {
    +[EKPersistentExceptionDate relations];
  }

  v3 = relations_relations_10;

  return v3;
}

void __38__EKPersistentExceptionDate_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E69925A0]];
  v1 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992B18], 0}];
  v3 = relations_relations_10;
  relations_relations_10 = v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentExceptionDate);
  date = [(EKPersistentExceptionDate *)self date];
  [(EKPersistentObject *)v4 primitiveSetDateValue:date forKey:*MEMORY[0x1E6992A00]];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  date = [(EKPersistentExceptionDate *)self date];
  v6 = [v3 stringWithFormat:@"%@ <%p> {date = %@}", v4, self, date];

  return v6;
}

@end