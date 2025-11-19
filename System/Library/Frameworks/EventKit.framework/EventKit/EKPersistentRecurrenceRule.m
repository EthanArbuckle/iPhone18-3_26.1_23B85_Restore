@interface EKPersistentRecurrenceRule
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKPersistentRecurrenceRule

+ (id)defaultPropertiesToLoad
{
  if (defaultPropertiesToLoad_onceToken_1 != -1)
  {
    +[EKPersistentRecurrenceRule defaultPropertiesToLoad];
  }

  v3 = defaultPropertiesToLoad_defaultPropertiesToLoad_1;

  return v3;
}

void __53__EKPersistentRecurrenceRule_defaultPropertiesToLoad__block_invoke()
{
  v6[6] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992BD0];
  v6[0] = *MEMORY[0x1E6992BC8];
  v6[1] = v0;
  v1 = *MEMORY[0x1E6992BB0];
  v6[2] = *MEMORY[0x1E6992BB8];
  v6[3] = v1;
  v2 = *MEMORY[0x1E6992BE0];
  v6[4] = *MEMORY[0x1E6992BC0];
  v6[5] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:6];
  v4 = defaultPropertiesToLoad_defaultPropertiesToLoad_1;
  defaultPropertiesToLoad_defaultPropertiesToLoad_1 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)relations
{
  if (relations_onceToken_3 != -1)
  {
    +[EKPersistentRecurrenceRule relations];
  }

  v3 = relations_relations_3;

  return v3;
}

void __39__EKPersistentRecurrenceRule_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992648]];
  v1 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992BD8], 0}];
  v3 = relations_relations_3;
  relations_relations_3 = v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKPersistentRecurrenceRule *)self frequencyRaw];
  v6 = [(EKPersistentRecurrenceRule *)self interval];
  v7 = [(EKPersistentRecurrenceRule *)self firstDayOfTheWeekRaw];
  v8 = [(EKPersistentRecurrenceRule *)self endDate];
  v9 = [(EKPersistentRecurrenceRule *)self count];
  v10 = [(EKPersistentRecurrenceRule *)self specifier];
  v11 = [v3 stringWithFormat:@"%@ <%p> {frequency = %ld interval = %ld; firstDayOfWeek = %ld; enddate = %@; count = %lu; specifier = %@}", v4, self, v5, v6, v7, v8, v9, v10];;

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EKPersistentRecurrenceRule);
  v5 = [(EKPersistentRecurrenceRule *)self UUID];
  v6 = [v5 copy];
  [(EKPersistentRecurrenceRule *)v4 setUUID:v6];

  [(EKPersistentRecurrenceRule *)v4 setFrequencyRaw:[(EKPersistentRecurrenceRule *)self frequencyRaw]];
  [(EKPersistentRecurrenceRule *)v4 setInterval:[(EKPersistentRecurrenceRule *)self interval]];
  [(EKPersistentRecurrenceRule *)v4 setFirstDayOfTheWeekRaw:[(EKPersistentRecurrenceRule *)self firstDayOfTheWeekRaw]];
  v7 = [(EKPersistentRecurrenceRule *)self specifier];
  [(EKPersistentRecurrenceRule *)v4 setSpecifier:v7];

  v8 = [(EKPersistentRecurrenceRule *)self endDate];
  [(EKPersistentRecurrenceRule *)v4 setEndDate:v8];

  [(EKPersistentRecurrenceRule *)v4 setCount:[(EKPersistentRecurrenceRule *)self count]];
  return v4;
}

@end