@interface EKPersistentRecurrenceRule
+ (id)defaultPropertiesToLoad;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)zone;
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
  frequencyRaw = [(EKPersistentRecurrenceRule *)self frequencyRaw];
  interval = [(EKPersistentRecurrenceRule *)self interval];
  firstDayOfTheWeekRaw = [(EKPersistentRecurrenceRule *)self firstDayOfTheWeekRaw];
  endDate = [(EKPersistentRecurrenceRule *)self endDate];
  v9 = [(EKPersistentRecurrenceRule *)self count];
  specifier = [(EKPersistentRecurrenceRule *)self specifier];
  v11 = [v3 stringWithFormat:@"%@ <%p> {frequency = %ld interval = %ld; firstDayOfWeek = %ld; enddate = %@; count = %lu; specifier = %@}", v4, self, frequencyRaw, interval, firstDayOfTheWeekRaw, endDate, v9, specifier];;

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(EKPersistentRecurrenceRule);
  uUID = [(EKPersistentRecurrenceRule *)self UUID];
  v6 = [uUID copy];
  [(EKPersistentRecurrenceRule *)v4 setUUID:v6];

  [(EKPersistentRecurrenceRule *)v4 setFrequencyRaw:[(EKPersistentRecurrenceRule *)self frequencyRaw]];
  [(EKPersistentRecurrenceRule *)v4 setInterval:[(EKPersistentRecurrenceRule *)self interval]];
  [(EKPersistentRecurrenceRule *)v4 setFirstDayOfTheWeekRaw:[(EKPersistentRecurrenceRule *)self firstDayOfTheWeekRaw]];
  specifier = [(EKPersistentRecurrenceRule *)self specifier];
  [(EKPersistentRecurrenceRule *)v4 setSpecifier:specifier];

  endDate = [(EKPersistentRecurrenceRule *)self endDate];
  [(EKPersistentRecurrenceRule *)v4 setEndDate:endDate];

  [(EKPersistentRecurrenceRule *)v4 setCount:[(EKPersistentRecurrenceRule *)self count]];
  return v4;
}

@end